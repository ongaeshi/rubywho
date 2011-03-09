# -*- coding: utf-8 -*-
#
# @file 
# @brief
# @author ongaeshi
# @date   2011/03/10

require 'rubygems'
require 'rubywho'

# Hello.
1.who?
"string".who?
String.who?
[1, 2, 3].who?

# Method filtering.
require 'active_record'
ActiveRecord::Base.who?(/sql/)


