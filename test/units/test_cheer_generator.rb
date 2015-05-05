require_relative '../helper'

class TestCheerGenerator < MiniTest::Test

    def test_failure
        output = false
        expected = true
        assert_equal expected, output
    end
end