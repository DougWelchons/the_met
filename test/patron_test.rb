require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'

class PatronTest < MiniTest::Test

  def test_it_exists
    bob = Patron.new("Bob", 20)

    assert_instance_of Patron, bob
  end

  def test_it_has_readable_attributes
    bob = Patron.new("Bob", 20)

    assert_equal "bob", patron_1.name
    assert_equal 20, patron_1.spending_money
    assert_equal [], patron_1.interests
  end
end
