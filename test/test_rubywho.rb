require 'helper'

class TestRubywho < Test::Unit::TestCase
  def test_who?
    %w[a b c].who?
    1.who?
    "string".who?
    String.who?
    [1, "cat", "cat", 2, "cat", 3].who?.select{|i| i == 'cat'}.who?.count.who?
  end
end
