require 'test_helper'

class BunnyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  100.times do |n|
    test "this thing works #{n}" do
      assert true
    end
  end

  test "something failing" do
    assert false, 'This failed'
  end

  test "error me" do
    raise ArgumentError, "Wups! Bet you didn't expect this!"
  end

  test "skip me" do
    skip "I would like to be skipped"
  end
end
