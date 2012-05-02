require 'test/unit'

class UserTest < Test::Unit::TestCase

  def setup
    @user = User.new
    @user.name = "Mark McSpadden"

    @user2 = User.new
    @user2.name = "Shevawn McSpadden"

    User.talent_pool = [User.talent_pool, @user, @user2].flatten.compact
  end

  def test_first_name
    assert_equal "Mark", @user.first_name
  end
  def test_last_name
    assert_equal "McSpadden", @user.last_name
  end
  def test_full_name
    assert_equal "Mark McSpadden", @user.full_name
  end
  def test_possible_username
    assert_equal "markmcspadden", @user.possible_username
  end

  def test_find_by_username
    assert_equal @user, User.find_by_username("markmcspadden")
  end

end