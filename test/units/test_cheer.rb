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
        actual = Cheer.for_person("Betty Anne")
        expected = "I'm sorry, what was your name again?"
        assert_equal expected, actual
    end

    def test_name_with_hyphens
        actual = Cheer.for_person("Ed-Dean")
        expected = "Give me an.. E!\n" +
                   "Give me a... D!\n" +
                   "Give me a... D!\n" +
                   "Give me a... E!\n" +
                   "Give me a... A!\n" +
                   "Give me a... N!\n" +
                   "Ed-Dean's just GRAND!"
        assert_equal expected, actual
    end

    def test_blank_name
        actual = Cheer.for_person("")
        expected = "I'm sorry, what was your name again?"
        assert_equal expected, actual
    end

    def test_all_whitespace_name
        actual = Cheer.for_person("    ")
        expected = "I'm sorry, what was your name again?"
        assert_equal expected, actual
    end

    def test_no_word_characters_name
        actual = Cheer.for_person("#$%!")
        expected = "I'm sorry, what was your name again?"
        assert_equal expected, actual
    end

    def test_happy_birthday_one_day
        actual = Cheer.for_birthday("05/06")
        expected = "Awesome! Your birthday is in 1 day! Happy Birthday in advance!\n"
        assert_equal expected, actual
    end

    def test_happy_birthday_multiple_days
        actual = Cheer.for_birthday("05/10")
        expected = "Awesome! Your birthday is in 5 days! Happy Birthday in advance!\n"
        assert_equal expected, actual
    end

    def test_invalid_birthday_doesnt_exist
        actual = Cheer.for_birthday("32178/1021")
        expected = "I'm sorry, I don't understand :( Try again next time.\n"
        assert_equal expected, actual
    end

    def test_invalid_characters
        actual = Cheer.for_birthday("^@!&!(")
        expected = "I'm sorry, I don't understand :( Try again next time.\n"
        assert_equal expected, actual
    end

end