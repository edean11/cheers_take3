require_relative './birthday_parser'
require 'date'

class Cheer

    def self.valid_name?(name)
        name.match(/[a-zA-Z]*(-)?[a-zA-z]*/).to_s.length == name.to_s.length
    end

    def self.for_person(name)
        cheer = ""
        if !valid_name?(name) || name.empty?
            cheer << "I'm sorry, what was your name again?"
        else
            an_letters = "AEIOFHLMRSXN"
            name.each_char do |letter|
                article = an_letters.include?(letter) ? "an" : "a"
                if article == "an"
                    cheer << "Give me #{article}.. #{letter.upcase}!\n"
                elsif letter == "-"
                else
                    cheer << "Give me #{article}... #{letter.upcase}!\n"
                end
            end
            cheer << name.chomp + "'s just GRAND!"
        end
        cheer
    end

    def self.for_birthday(birthday_string)
        birthday_message = ""
        if BirthdayParser.get_diff(birthday_string).nil?
            birthday_message << "I'm sorry, I don't understand :( Try again next time.\n"
        else
            diff = BirthdayParser.get_diff(birthday_string)
                if diff < 0
                    birthday_message << "Awesome! Your birthday is in #{365-(diff*-1)} days! Happy Birthday in advance!\n"
                elsif diff == 1
                    birthday_message << "Awesome! Your birthday is in #{diff} day! Happy Birthday in advance!\n"
                elsif diff == 0
                    birthday_message << "Happy Birthday!\n"
                else
                    birthday_message << "Awesome! Your birthday is in #{diff} days! Happy Birthday in advance!\n"
            end
        end
        birthday_message
    end
end