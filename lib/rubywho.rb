# -*- coding: utf-8 -*-
#
# @file 
# @brief
# @author ongaeshi
# @date   2011/03/09

class RubyWho
  module Adapter
    def who?(n = nil, filter = nil)
      tap{|x| puts "== who? #{x.inspect} =="; RubyWho.new(x, filter).display(n) }
    end
  end
  
  IGNORE = [RubyWho::Adapter]
  COLS = 80

  def initialize(obj, filter_re = nil)
    @obj = obj
    @filter_re = filter_re
  end

  def display(n = nil)
    if @obj.is_a?(Module)
      limit(@obj.ancestors, n).each do |klass|
        puts klass.to_s + '(%s)' % klass.class
        display_methods(klass.singleton_methods(false))
      end
    else
      limit(@obj.class.ancestors, n).each do |klass|
        puts klass.to_s + '#'
        display_methods(klass.public_instance_methods(false))
      end
    end
  end

  private
  
  def limit(ancestors, n)
    as = ancestors.reject{|a| IGNORE.include?(a) }
    n.nil? ? as : as[0, n]
  end

  def display_methods(methods)
    alpha, op = methods.sort.partition{|m| m =~ /\A[_A-Za-z]/o }
    display_each_methods(alpha, COLS)
    display_each_methods(op, COLS)
    puts 'v' + '-' * (COLS - 1)
  end

  def display_each_methods(methods, cols)
    buf = '| '
    methods.each do |m|
      next if @filter_re && @filter_re !~ m
      if (buf + m).length > cols
        puts buf.sub(/\,\s*\Z/, '')
        buf = '| ' + m + ', '
      else
        buf << m << ', '
      end
    end
    puts buf.sub(/\,\s*\Z/, '') unless buf == '| '
  end
end
Object.send(:include, RubyWho::Adapter)

if __FILE__ == $0
  %w[a b c].who?
  1.who?

  require 'rubygems'
  require 'active_record'
  ActiveRecord::Base.who?(1, /sql/)
end




