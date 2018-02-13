require 'test_helper'

class UserTest < ActiveSupport::TestCase
    def setup
        @user = users(:one)
    end

    test "user must be valid" do
        assert @user.valid?
    end

    test "lname must be present" do
        @user.lname = ""
        assert_not @user.valid?
    end

    test "fname must be present" do
        @user.fname = ""
        assert_not @user.valid?
    end

    test "email must be present" do
        @user.email = ""
        assert_not @user.valid?
    end
end
