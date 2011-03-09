# rubywho: Who is this ruby-object?

Ruby running on the object's class hierarchy, methods of each class to display a legible.

## Install

    # Windows
    $ gem.bat install rubywho
    
    # OSX / Linux
    $ sudo gem install rubywho

## Basic Sample

### Code

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

### Result

    == 1.who? ==
    Fixnum#
    | abs, div, divmod, even?, fdiv, id2name, modulo, odd?, power!, quo, rdiv
    | rpower, size, to_f, to_s, to_sym, zero?
    | %, &, *, **, +, -, -@, /, <, <<, <=, <=>, ==, >, >=, >>, [], ^, |, ~
    v-------------------------------------------------------------------------------
    Integer#
    | ceil, chr, denominator, downto, even?, floor, gcd, gcdlcm, integer?, lcm, next
    | numerator, odd?, ord, pred, round, succ, taguri, taguri=, times, to_bn, to_i
    | to_int, to_r, to_yaml, truncate, upto
    v-------------------------------------------------------------------------------
    Precision#
    | prec, prec_f, prec_i
    v-------------------------------------------------------------------------------
    Numeric#
    | abs, ceil, coerce, div, divmod, eql?, fdiv, floor, integer?, modulo, nonzero?
    | quo, remainder, round, singleton_method_added, step, to_int, truncate, zero?
    | +@, -@, <=>
    v-------------------------------------------------------------------------------
    Comparable#
    | between?
    | <, <=, ==, >, >=
    v-------------------------------------------------------------------------------
    Object#
    | taguri, taguri=, to_yaml, to_yaml_properties, to_yaml_style
    v-------------------------------------------------------------------------------
    Kernel#
    | __id__, __send__, class, clone, display, dup, enum_for, eql?, equal?, extend
    | freeze, frozen?, hash, id, inspect, instance_eval, instance_exec, instance_of?
    | instance_variable_defined?, instance_variable_get, instance_variable_set
    | instance_variables, is_a?, kind_of?, method, methods, nil?, object_id
    | private_methods, protected_methods, public_methods, respond_to?, send
    | singleton_methods, taint, tainted?, tap, to_a, to_enum, to_s, type, untaint
    | ==, ===, =~
    v-------------------------------------------------------------------------------
    == "string".who? ==
    String#
    | bytes, bytesize, capitalize, capitalize!, casecmp, center, chars, chomp
    | chomp!, chop, chop!, concat, count, crypt, delete, delete!, downcase
    | downcase!, dump, each, each_byte, each_char, each_line, empty?, end_with?
    | eql?, gsub, gsub!, hash, hex, include?, index, insert, inspect, intern
    | is_binary_data?, is_complex_yaml?, length, lines, ljust, lstrip, lstrip!
    | match, next, next!, oct, partition, replace, reverse, reverse!, rindex, rjust
    | rpartition, rstrip, rstrip!, scan, shellescape, shellsplit, size, slice
    | slice!, split, squeeze, squeeze!, start_with?, strip, strip!, sub, sub!, succ
    | succ!, sum, swapcase, swapcase!, taguri, taguri=, to_f, to_i, to_s, to_str
    | to_sym, to_yaml, tr, tr!, tr_s, tr_s!, unpack, upcase, upcase!, upto
    | %, *, +, <<, <=>, ==, =~, [], []=
    v-------------------------------------------------------------------------------
    Enumerable#
    | all?, any?, collect, count, cycle, detect, drop, drop_while, each_cons
    | each_slice, each_with_index, entries, enum_cons, enum_slice, enum_with_index
    | find, find_all, find_index, first, grep, group_by, include?, inject, map, max
    | max_by, member?, min, min_by, minmax, minmax_by, none?, one?, partition
    | reduce, reject, reverse_each, select, sort, sort_by, take, take_while, to_a
    | zip
    v-------------------------------------------------------------------------------
    Comparable#
    | between?
    | <, <=, ==, >, >=
    v-------------------------------------------------------------------------------
    Object#
    | taguri, taguri=, to_yaml, to_yaml_properties, to_yaml_style
    v-------------------------------------------------------------------------------
    Kernel#
    | __id__, __send__, class, clone, display, dup, enum_for, eql?, equal?, extend
    | freeze, frozen?, hash, id, inspect, instance_eval, instance_exec, instance_of?
    | instance_variable_defined?, instance_variable_get, instance_variable_set
    | instance_variables, is_a?, kind_of?, method, methods, nil?, object_id
    | private_methods, protected_methods, public_methods, respond_to?, send
    | singleton_methods, taint, tainted?, tap, to_a, to_enum, to_s, type, untaint
    | ==, ===, =~
    v-------------------------------------------------------------------------------
    == String.who? ==
    String(Class)
    | yaml_new, yaml_tag_subclasses?
    v-------------------------------------------------------------------------------
    Enumerable(Module)
    v-------------------------------------------------------------------------------
    Comparable(Module)
    v-------------------------------------------------------------------------------
    Object(Class)
    | yaml_tag_subclasses?
    v-------------------------------------------------------------------------------
    Kernel(Module)
    | Array, Float, Integer, String, URI, __method__, abort, at_exit, autoload
    | autoload?, binding, block_given?, callcc, caller, catch, chomp, chomp!, chop
    | chop!, eval, exec, exit, exit!, fail, fork, format, getc, gets
    | global_variables, gsub, gsub!, iterator?, lambda, load, local_variables, loop
    | method_missing, open, p, print, printf, proc, putc, puts, raise, rand
    | readline, readlines, require, scan, select, set_trace_func, sleep, split
    | sprintf, srand, sub, sub!, syscall, system, test, throw, trace_var, trap
    | untrace_var, warn
    | `
    v-------------------------------------------------------------------------------
    == [1, 2, 3].who? ==
    Array#
    | assoc, at, choice, clear, collect, collect!, combination, compact, compact!
    | concat, count, cycle, delete, delete_at, delete_if, drop, drop_while, each
    | each_index, empty?, eql?, fetch, fill, find_index, first, flatten, flatten!
    | frozen?, hash, include?, index, indexes, indices, insert, inspect, join, last
    | length, map, map!, nitems, pack, permutation, pop, product, push, rassoc
    | reject, reject!, replace, reverse, reverse!, reverse_each, rindex, select
    | shelljoin, shift, shuffle, shuffle!, size, slice, slice!, sort, sort!, taguri
    | taguri=, take, take_while, to_a, to_ary, to_s, to_yaml, transpose, uniq, uniq!
    | unshift, values_at, yaml_initialize, zip
    | &, *, +, -, <<, <=>, ==, [], []=, |
    v-------------------------------------------------------------------------------
    Enumerable#
    | all?, any?, collect, count, cycle, detect, drop, drop_while, each_cons
    | each_slice, each_with_index, entries, enum_cons, enum_slice, enum_with_index
    | find, find_all, find_index, first, grep, group_by, include?, inject, map, max
    | max_by, member?, min, min_by, minmax, minmax_by, none?, one?, partition
    | reduce, reject, reverse_each, select, sort, sort_by, take, take_while, to_a
    | zip
    v-------------------------------------------------------------------------------
    Object#
    | taguri, taguri=, to_yaml, to_yaml_properties, to_yaml_style
    v-------------------------------------------------------------------------------
    Kernel#
    | __id__, __send__, class, clone, display, dup, enum_for, eql?, equal?, extend
    | freeze, frozen?, hash, id, inspect, instance_eval, instance_exec, instance_of?
    | instance_variable_defined?, instance_variable_get, instance_variable_set
    | instance_variables, is_a?, kind_of?, method, methods, nil?, object_id
    | private_methods, protected_methods, public_methods, respond_to?, send
    | singleton_methods, taint, tainted?, tap, to_a, to_enum, to_s, type, untaint
    | ==, ===, =~
    v-------------------------------------------------------------------------------
    == ActiveRecord::Base.who? ==
    ActiveRecord::Base(Class)
    | count_by_sql, find_by_sql, sanitize_sql, sanitize_sql_array
    | sanitize_sql_for_assignment, sanitize_sql_for_conditions, sanitize_sql_hash
    | sanitize_sql_hash_for_assignment, sanitize_sql_hash_for_conditions
    v-------------------------------------------------------------------------------
    ActiveRecord::Aggregations(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Transactions(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Reflection(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Serialization(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::Serializers::Xml(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::Serializers::JSON(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::Serialization(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AutosaveAssociation(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::NestedAttributes(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Associations(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AssociationPreload(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::NamedScope(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::Validations::Callbacks(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Callbacks(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::Observing(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Timestamp(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::MassAssignmentSecurity(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AttributeMethods::Dirty(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::Dirty(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AttributeMethods::TimeZoneConversion(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AttributeMethods::PrimaryKey(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AttributeMethods::Read(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AttributeMethods::Write(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AttributeMethods::BeforeTypeCast(Module)
    v-------------------------------------------------------------------------------
    #<Module:0x101796268>(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AttributeMethods::Query(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::AttributeMethods(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::AttributeMethods(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Locking::Optimistic(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Locking::Pessimistic(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Validations(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::Validations::HelperMethods(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::Validations(Module)
    v-------------------------------------------------------------------------------
    ActiveSupport::Callbacks(Module)
    v-------------------------------------------------------------------------------
    ActiveModel::Conversion(Module)
    v-------------------------------------------------------------------------------
    ActiveRecord::Persistence(Module)
    v-------------------------------------------------------------------------------
    Object(Class)
    v-------------------------------------------------------------------------------
    JSON::Ext::Generator::GeneratorMethods::Object(Module)
    v-------------------------------------------------------------------------------
    ActiveSupport::Dependencies::Loadable(Module)
    v-------------------------------------------------------------------------------
    Arel::Sql::ObjectExtensions(Module)
    v-------------------------------------------------------------------------------
    Arel::ObjectExtensions(Module)
    v-------------------------------------------------------------------------------
    Kernel(Module)
    v-------------------------------------------------------------------------------

## Advance Sample

### Code

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

### Result

    == 1.who? ==
    Fixnum#
    | to_f, to_s, to_sym
    v-------------------------------------------------------------------------------
    Integer#
    | to_bn, to_i, to_int, to_r, to_yaml
    v-------------------------------------------------------------------------------
    Precision#
    v-------------------------------------------------------------------------------
    Numeric#
    | to_int
    v-------------------------------------------------------------------------------
    Comparable#
    v-------------------------------------------------------------------------------
    Object#
    | to_yaml, to_yaml_properties, to_yaml_style
    v-------------------------------------------------------------------------------
    Kernel#
    | to_a, to_enum, to_s
    v-------------------------------------------------------------------------------
    == 1.who? ==
    Fixnum#
    | abs, div, divmod, even?, fdiv, id2name, modulo, odd?, power!, quo, rdiv
    | rpower, size, to_f, to_s, to_sym, zero?
    | %, &, *, **, +, -, -@, /, <, <<, <=, <=>, ==, >, >=, >>, [], ^, |, ~
    v-------------------------------------------------------------------------------
    Integer#
    | ceil, chr, denominator, downto, even?, floor, gcd, gcdlcm, integer?, lcm, next
    | numerator, odd?, ord, pred, round, succ, taguri, taguri=, times, to_bn, to_i
    | to_int, to_r, to_yaml, truncate, upto
    v-------------------------------------------------------------------------------
    Precision#
    | prec, prec_f, prec_i
    v-------------------------------------------------------------------------------
    == 1.who? ==
    Fixnum#
    | abs, div, divmod, even?, fdiv, id2name, modulo, odd?, power!, quo, rdiv
    | rpower, size, to_f, to_s, to_sym, zero?
    | %, &, *, **, +, -, -@, /, <, <<, <=, <=>, ==, >, >=, >>, [], ^, |, ~
    v-------------------------------------------------------------------------------
    == who0? display 1-line. ==
    1 #: Fixnum#
    == 1.who? ==
    Fixnum#
    | abs, div, divmod, even?, fdiv, id2name, modulo, odd?, power!, quo, rdiv
    | rpower, size, to_f, to_s, to_sym, zero?
    | %, &, *, **, +, -, -@, /, <, <<, <=, <=>, ==, >, >=, >>, [], ^, |, ~
    v-------------------------------------------------------------------------------
    Integer#
    | ceil, chr, denominator, downto, even?, floor, gcd, gcdlcm, integer?, lcm, next
    | numerator, odd?, ord, pred, round, succ, taguri, taguri=, times, to_bn, to_i
    | to_int, to_r, to_yaml, truncate, upto
    v-------------------------------------------------------------------------------
    Precision#
    | prec, prec_f, prec_i
    v-------------------------------------------------------------------------------
    Numeric#
    | abs, ceil, coerce, div, divmod, eql?, fdiv, floor, integer?, modulo, nonzero?
    | quo, remainder, round, singleton_method_added, step, to_int, truncate, zero?
    | +@, -@, <=>
    v-------------------------------------------------------------------------------
    Comparable#
    | between?
    | <, <=, ==, >, >=
    v-------------------------------------------------------------------------------
    Object#
    | taguri, taguri=, to_yaml, to_yaml_properties, to_yaml_style
    v-------------------------------------------------------------------------------
    Kernel#
    | __id__, __send__, class, clone, display, dup, enum_for, eql?, equal?, extend
    | freeze, frozen?, hash, id, inspect, instance_eval, instance_exec, instance_of?
    | instance_variable_defined?, instance_variable_get, instance_variable_set
    | instance_variables, is_a?, kind_of?, method, methods, nil?, object_id
    | private_methods, protected_methods, public_methods, respond_to?, send
    | singleton_methods, taint, tainted?, tap, to_a, to_enum, to_s, type, untaint
    | ==, ===, =~
    v-------------------------------------------------------------------------------
    == Fixnum.who? ==
    Fixnum#
    | abs, div, divmod, even?, fdiv, id2name, modulo, odd?, power!, quo, rdiv
    | rpower, size, to_f, to_s, to_sym, zero?
    | %, &, *, **, +, -, -@, /, <, <<, <=, <=>, ==, >, >=, >>, [], ^, |, ~
    v-------------------------------------------------------------------------------
    Integer#
    | ceil, chr, denominator, downto, even?, floor, gcd, gcdlcm, integer?, lcm, next
    | numerator, odd?, ord, pred, round, succ, taguri, taguri=, times, to_bn, to_i
    | to_int, to_r, to_yaml, truncate, upto
    v-------------------------------------------------------------------------------
    Precision#
    | prec, prec_f, prec_i
    v-------------------------------------------------------------------------------
    Numeric#
    | abs, ceil, coerce, div, divmod, eql?, fdiv, floor, integer?, modulo, nonzero?
    | quo, remainder, round, singleton_method_added, step, to_int, truncate, zero?
    | +@, -@, <=>
    v-------------------------------------------------------------------------------
    Comparable#
    | between?
    | <, <=, ==, >, >=
    v-------------------------------------------------------------------------------
    Object#
    | taguri, taguri=, to_yaml, to_yaml_properties, to_yaml_style
    v-------------------------------------------------------------------------------
    Kernel#
    | __id__, __send__, class, clone, display, dup, enum_for, eql?, equal?, extend
    | freeze, frozen?, hash, id, inspect, instance_eval, instance_exec, instance_of?
    | instance_variable_defined?, instance_variable_get, instance_variable_set
    | instance_variables, is_a?, kind_of?, method, methods, nil?, object_id
    | private_methods, protected_methods, public_methods, respond_to?, send
    | singleton_methods, taint, tainted?, tap, to_a, to_enum, to_s, type, untaint
    | ==, ===, =~
    v-------------------------------------------------------------------------------
    == 1.who? ==
    Fixnum(Class)
    | induced_from
    v-------------------------------------------------------------------------------
    Integer(Class)
    | induced_from, yaml_tag_subclasses?
    v-------------------------------------------------------------------------------
    Precision(Module)
    | included
    v-------------------------------------------------------------------------------
    Numeric(Class)
    v-------------------------------------------------------------------------------
    Comparable(Module)
    v-------------------------------------------------------------------------------
    Object(Class)
    | yaml_tag_subclasses?
    v-------------------------------------------------------------------------------
    Kernel(Module)
    | Array, Float, Integer, String, URI, __method__, abort, at_exit, autoload
    | autoload?, binding, block_given?, callcc, caller, catch, chomp, chomp!, chop
    | chop!, eval, exec, exit, exit!, fail, fork, format, getc, gets
    | global_variables, gsub, gsub!, iterator?, lambda, load, local_variables, loop
    | method_missing, open, p, print, printf, proc, putc, puts, raise, rand
    | readline, readlines, require, scan, select, set_trace_func, sleep, split
    | sprintf, srand, sub, sub!, syscall, system, test, throw, trace_var, trap
    | untrace_var, warn
    | `
    v-------------------------------------------------------------------------------
    == Fixnum.who? ==
    Fixnum(Class)
    | induced_from
    v-------------------------------------------------------------------------------
    Integer(Class)
    | induced_from, yaml_tag_subclasses?
    v-------------------------------------------------------------------------------
    Precision(Module)
    | included
    v-------------------------------------------------------------------------------
    Numeric(Class)
    v-------------------------------------------------------------------------------
    Comparable(Module)
    v-------------------------------------------------------------------------------
    Object(Class)
    | yaml_tag_subclasses?
    v-------------------------------------------------------------------------------
    Kernel(Module)
    | Array, Float, Integer, String, URI, __method__, abort, at_exit, autoload
    | autoload?, binding, block_given?, callcc, caller, catch, chomp, chomp!, chop
    | chop!, eval, exec, exit, exit!, fail, fork, format, getc, gets
    | global_variables, gsub, gsub!, iterator?, lambda, load, local_variables, loop
    | method_missing, open, p, print, printf, proc, putc, puts, raise, rand
    | readline, readlines, require, scan, select, set_trace_func, sleep, split
    | sprintf, srand, sub, sub!, syscall, system, test, throw, trace_var, trap
    | untrace_var, warn
    | `
    v-------------------------------------------------------------------------------
    == who0? method chain. ==
    [1, "cat", "cat", 2, "cat", 3] #: Array#
    ["cat", "cat", "cat"] #: Array#
    3 #: Fixnum#
    
## Contributing to rubywho
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 ongaeshi. See LICENSE.txt for
further details.

