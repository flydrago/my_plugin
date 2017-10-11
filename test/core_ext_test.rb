require 'test_helper'

class CoreExtTest < ActiveSupport::TestCase
  test 'test to squawk' do
    assert_equal 'squawk! Hello World', 'Hello World'.to_squawk
  end
end
