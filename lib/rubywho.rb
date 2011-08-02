# -*- coding: utf-8 -*-
#
# @file 
# @brief
# @author ongaeshi
# @date   2011/03/09

class RubyWho
  module Adapter
    def who_io?(io, filter = nil, level = nil, kind = nil)
      tap do |obj|
        if (level.nil? || level > 0)
          io.puts "== #{obj.inspect}.who? =="
          RubyWho.new(obj, io, filter, kind).display(level)
        else
          io.puts "#{obj.inspect} #: #{RubyWho.new(obj, io, filter, kind).obj_str}"
        end
      end
    end
    
    def who?(filter = nil, level = nil, kind = nil)
      who_io?($stdout, filter, level, kind)
    end

    def who_singleton?(filter = nil, level = nil)
      who?(filter, level, :singleton)
    end

    alias :who_s? :who_singleton?

    def who_instance?(filter = nil, level = nil)
      who?(filter, level, :instance)
    end

    alias :who_i? :who_instance?

    def who0?(filter = nil)
      who?(filter, 0)
    end
    
    def who1?(filter = nil)
      who?(filter, 1)
    end
  end
  
  IGNORE = [RubyWho::Adapter]
  COLS = 80

  def initialize(obj, io, filter_re, kind)
    @obj = obj
    @io = io
    @filter_re = filter_re.is_a?(String) ? Regexp.new(filter_re) : filter_re
    @kind = kind
  end

  def obj_str
    klass = @obj.is_a?(Module) ? @obj : @obj.class
    
    if singleton?
      klass.to_s + '(%s)' % klass.class
    else
      klass.to_s + '#'
    end
  end

  def display(n = nil)
    obj_klass = @obj.is_a?(Module) ? @obj : @obj.class

    if singleton?
      limit(obj_klass.ancestors, n).each do |klass|
        @io.puts klass.to_s + '(%s)' % klass.class
        display_methods(klass.singleton_methods(false))
      end
    else
      limit(obj_klass.ancestors, n).each do |klass|
        @io.puts klass.to_s + '#'
        display_methods(klass.public_instance_methods(false))
      end
    end
  end

  private
  
  def singleton?
    @obj.is_a?(Module) && @kind != :instance || @kind == :singleton
  end

  def limit(ancestors, n)
    as = ancestors.reject{|a| IGNORE.include?(a) }
    n.nil? ? as : as[0, n]
  end

  def display_methods(methods)
    alpha, op = methods.sort.partition{|m| m =~ /\A[_A-Za-z]/o }
    display_each_methods(alpha, COLS)
    display_each_methods(op, COLS)
    @io.puts 'v' + '-' * (COLS - 1)
  end

  def display_each_methods(methods, cols)
    buf = '| '
    methods.map(&:to_s).each do |m|
      next if @filter_re && @filter_re !~ m
      if (buf + m).length > cols
        @io.puts buf.sub(/\,\s*\Z/, '')
        buf = '| ' + m + ', '
      else
        buf << m << ', '
      end
    end
    @io.puts buf.sub(/\,\s*\Z/, '') unless buf == '| '
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




