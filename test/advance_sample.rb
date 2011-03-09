# -*- coding: utf-8 -*-
#
# @file 
# @brief
# @author ongaeshi
# @date   2011/03/10

require 'rubygems'
require 'rubywho'

# Filtering
1.who?("to_")

# Limit disp level.
1.who?(nil, 3)

# Shortcut.
1.who1?
puts "== who0? display 1-line. =="
1.who0?

# Force display instance_method.
1.who_instance?
Fixnum.who_i?

# Force display singleton_method.
1.who_singleton?
Fixnum.who_s?

# Method chain.
puts "== who0? method chain. =="
[1, "cat", "cat", 2, "cat", 3].who0?.select{|i| i == 'cat'}.who0?.count.who0?





