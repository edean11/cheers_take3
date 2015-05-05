
require 'date'

class BirthdayParser
    def self.get_diff(birthday_string)
        birthday_diff = nil
        begin
            birthday = Date.parse(birthday_string.chomp).yday
            now = DateTime.now.yday
            diff = birthday - now
            birthday_diff = diff
        rescue
            birthday_diff
        end
        birthday_diff
    end
end