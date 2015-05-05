require_relative '../helper'
require_relative '../../lib/cheer'

class TestCheer < MiniTest::Test

    def test_happy_path_name
        actual = Cheer.for_person("Ed")
        expected = "Give me an.. E!\n" +
                   "Give me a... D!\n" +
                   "Ed's just GRAND!"
        assert_equal expected, actual
    end

    def test_name_with_spaces
        actual = Cheer.for_person("Ed")
        expected = "Give me an.. E!\n" +
                   "Give me a... D!\n" +
                   "Ed's just GRAND!"
        assert_equal expected, actual
    end

    def test_name_with_hyphens
        actual = Cheer.for_person("Ed")
        expected = "Give me an.. E!\n" +
                   "Give me a... D!\n" +
                   "Ed's just GRAND!"
        assert_equal expected, actual
    end

    def test_blank_name
        actual = Cheer.for_person("Ed")
        expected = "Give me an.. E!\n" +
                   "Give me a... D!\n" +
                   "Ed's just GRAND!"
        assert_equal expected, actual
    end

    def test_all_whitespace_name
        actual = Cheer.for_person("Ed")
        expected = "Give me an.. E!\n" +
                   "Give me a... D!\n" +
                   "Ed's just GRAND!"
        assert_equal expected, actual
    end

    def test_no_word_characters_name
        actual = Cheer.for_person("Ed")
        expected = "Give me an.. E!\n" +
                   "Give me a... D!\n" +
                   "Ed's just GRAND!"
        assert_equal expected, actual
    end
end