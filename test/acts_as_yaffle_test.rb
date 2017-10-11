require 'test_helper'

class ActsAsYaffleTest < ActiveSupport::TestCase
  test 'wick wall filed last_squawk' do
    assert_equal 'last_squawk', WickWall.yaffle_text_field
  end

  test 'hick wall filed last_tweet' do
    assert_equal 'last_tweet', HickWall.yaffle_text_field
  end

  test 'wick wall squawk' do
    w = WickWall.new
    w.squawk('Hello World')
    assert_equal 'squawk! Hello World', w.last_squawk
  end

  test 'hick wall squawk' do
    h = HickWall.new
    h.squawk('Hello World')
    assert_equal 'squawk! Hello World', h.last_tweet
  end
end
