gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'

class UserTest < Minitest::Unit::TestCase

  def test_it_exists
    assert User.new("name")
  end

  def test_a_user_can_get_a_credit_card_that_is_valid
    
  end
end
