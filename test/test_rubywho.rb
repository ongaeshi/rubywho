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

    @io.string = ""
    self.who?(/assert/)
    assert_match(/assert_no_match/, @io.string)
    assert_no_match(/clone/, @io.string)

    @io.string = ""
    self.who?("assert")
    assert_match(/assert_no_match/, @io.string)
    assert_no_match(/clone/, @io.string)
  end

  def test_who0?
    @io.string = ""
    1.who0?
    assert_match(/1 #: Fixnum#/, @io.string)

    @io.string = ""
    [1, 2, 3].who0?
    assert_match(/\[1, 2, 3\] #: Array#/, @io.string)

    @io.string = ""
    Array.who0?
    assert_match(/Array #: Array\(Class\)/, @io.string)

    @io.string = ""
    [1, "cat", "cat", 2, "cat", 3].who0?.select{|i| i == 'cat'}.who0?.count.who0?
    assert_match /\[1, "cat", "cat", 2, "cat", 3\] #: Array#/, @io.string
    assert_match /\["cat", "cat", "cat"\] #: Array#/, @io.string
    assert_match /3 #: Fixnum#/, @io.string
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

