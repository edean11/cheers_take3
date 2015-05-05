require_relative '../helper'
require_relative '../../lib/birthday_parser'

class TestBirthdayParser < MiniTest::Test

    def test_happy_birthday
        actual = BirthdayParser.get_diff("05/08")
        expected = 3
        assert_equal expected, actual
    end

    def test_happy_birthday_yesterday
        actual = BirthdayParser.get_diff("05/04")
        expected = -1
        assert_equal expected, actual
    end

    def test_birthday_letters
        actual = BirthdayParser.get_diff("may 07")
        expected = 2
        assert_equal expected, actual
    end

    def test_birthday_letters_with_year
        actual = BirthdayParser.get_diff("may 07 2015")
        expected = 2
        assert_equal expected, actual
    end

    def test_invalid_birthday_characters
        actual = BirthdayParser.get_diff("#*/$$")
        expected = nil
        assert_equal expected, actual
    end

    def test_invalid_birthday_numbers
        actual = BirthdayParser.get_diff("64/02")
        expected = nil
        assert_equal expected, actual
    end
end