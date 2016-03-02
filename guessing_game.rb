class Guess
    
    def guess_higher_or_lower
        @@computer_guess = rand(1..100)
        tries = 0
        begin
            tries += 1
            puts "Guess a number between 1 and 100:"
            @@user_guess = gets.chomp
            if @@user_guess.to_i > @@computer_guess
                puts "Too high, try again"
            elsif @@user_guess.to_i < @@computer_guess
                puts "Too low, try again"
            elsif @@user_guess.to_i == @@computer_guess
                puts "CORRECT! Found it in #{tries} tries"
            end
        end while @@user_guess.to_i != @@computer_guess
        
    end
end

guess = Guess.new

guess.guess_higher_or_lower

# #Alternate code

# class Guess
#     @number = 0

#     def initialize
#         @number = rand(1..100)
#     end

#     def play
#         puts 'guess a number between 1 and 100'
#         correct = false
#         tries = 0

#         while correct == false  
#             tries += 1
#             guess = gets.chomp.to_i
#             if guess > @number
#                 puts "Too high"
#             elsif guess < @number
#                 puts 'too low'
#             else
#                 puts "Correct, found it in #{tries} tries"
#                 correct = true
#             end

#     end
# end

# game = Guess.new

# guess.play