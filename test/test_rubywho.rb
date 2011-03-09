require 'test/unit'
require File.join(File.dirname(__FILE__), "../lib/rubywho")
require 'stringio'

class TestRubyWho < Test::Unit::TestCase
  def setup
    @io = StringIO.new
    @old_stdout = $stdout
    $stdout = @io
  end

  def test_who_io?
    io = StringIO.new

    io.string = ""
    1.who_io?(io)
    assert_match(/== 1\.who\? ==/, io.string)
    assert_match(/Fixnum/, io.string)
    assert_match(/Integer/, io.string)

    io.string = ""
    "string".who_io?(io)
    assert_match(/== "string"\.who\? ==/, io.string)
    assert_match(/String/, io.string)
    assert_match(/lines, ljust, lstrip/, io.string)
    assert_match(/Enumerable/, io.string)

    io.string = ""
    String.who_io?(io)
    assert_match(/String\(Class\)/, io.string)

    io.string = ""
    [1, "cat", "cat", 2, "cat", 3].who_io?(io).select{|i| i == 'cat'}.who_io?(io).count.who_io?(io)
    assert_match(/== \[1, "cat", "cat", 2, "cat", 3\]\.who\? ==\nArray/, io.string)
    assert_match(/== \["cat", "cat", "cat"\]\.who\? ==\nArray/, io.string)
    assert_match(/== 3\.who\? ==\nFixnum/, io.string)
  end

  def test_who?
    @io.string = ""
    who?
    assert_match /TestRubyWho/, @io.string
    
    @io.string = ""
    %w[a b c].who?
    assert_match /Array/, @io.string

    @io.string = ""
    1.who?
    assert_match(/== 1\.who\? ==/, @io.string)
    assert_match(/Fixnum/, @io.string)
    assert_match(/Integer/, @io.string)

    @io.string = ""
    "string".who?
    assert_match(/== "string"\.who\? ==/, @io.string)
    assert_match(/String/, @io.string)
    assert_match(/lines, ljust, lstrip/, @io.string)
    assert_match(/Enumerable/, @io.string)
    
    @io.string = ""
    String.who?
    assert_match(/String\(Class\)/, @io.string)

    @io.string = ""
    [1, "cat", "cat", 2, "cat", 3].who?.select{|i| i == 'cat'}.who?.count.who?
    String.who_io?(@io)
    assert_match(/== \[1, "cat", "cat", 2, "cat", 3\]\.who\? ==\nArray/, @io.string)
    assert_match(/== \["cat", "cat", "cat"\]\.who\? ==\nArray/, @io.string)
    assert_match(/== 3\.who\? ==\nFixnum/, @io.string)
  end

  def test_who0?
    @io.string = ""
    1.who0?
    assert_match(/1\.who\? Fixnum#/, @io.string)

    @io.string = ""
    [1, 2, 3].who0?
    assert_match(/\[1, 2, 3\]\.who\? Array#/, @io.string)

    @io.string = ""
    Array.who0?
    assert_match(/Array\.who\? Array\(Class\)/, @io.string)
  end

  def test_who1?
    @io.string = ""
    1.who1?
    assert_match(/== 1\.who\? ==/, @io.string)
    assert_no_match(/Integer/, @io.string)
  end

  def teardown
    $stdout = @old_stdout
  end
end

WHO_1 = <<EOF
== 1.who? ==
Fixnum#
| abs, div, divmod, even?, fdiv, id2name, modulo, odd?, quo, size, to_f, to_s
| to_sym, zero?
| %, &, *, **, +, -, -@, /, <, <<, <=, <=>, ==, >, >=, >>, [], ^, |, ~
v-------------------------------------------------------------------------------
Integer#
| ceil, chr, downto, even?, floor, integer?, next, odd?, ord, pred, round, succ
| times, to_i, to_int, truncate, upto
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
EOF

