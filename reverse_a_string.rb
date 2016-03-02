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

#Alternate solution
# puts "Give me a string"
# str = gets.chomp
# len = str.length
# halflen = (len/2).to_i
# while len > 0
#     len -= 1
#     opposite = (str.length - (len+1))
#     temp = str[len]
#     oppstr = str[opposite]
#     str[len] = str[opposite]
#     str[opposite] = temp
# end
# puts 'reversed: '+str
