class Reverse
    def initialize (string)
        @@string = string
        @@array = []    
    end
    def backwards
        @string_length = @@string.length
        until @string_length == 0 do
            @string_length -= 1
            @@array.push(@@string[@string_length])
        end
        puts "#{@@array.join()}"
   end
end

puts "enter a string to reverse: "
string = gets.chomp

reverse = Reverse.new(string)

reverse.backwards
