class Calculator
    
    def initialize (mode, num1, num2)
        @@mode = mode
        @@num1 = num1
        @@num2 = num2
    end
    
    def mode
        case @@mode
        when "add"
            result = @@num1 + @@num2
            puts "#{@@num1} + #{@@num2} = #{result}" 
        when "sub"    
            result = @@num1 - @@num2
            puts "#{@@num1} - #{@@num2} = #{result}"
        when "mult"    
            result = @@num1 * @@num2
            puts "#{@@num1} * #{@@num2} = #{result}"    
        when "div"    
            result = @@num1 / @@num2
            puts "#{@@num1} / #{@@num2} = #{result}"
        end
    end
end

puts "What would you like to do? add, sub, mult or div?"
mode = gets.chomp
puts "Enter first number: "
num1 = gets.chomp.to_f
puts "Enter second number: "
num2 = gets.chomp.to_f
calc = Calculator.new(mode, num1, num2)

calc.mode

#Alternate solution - seperate logic from UI

#Logic
# class calculator
#     @operation
#     attr_accessor :number1, :number2
#     CALC_ADD = 'add'

#     def initialize
#     end

#     def operation=(op)
#         valid_add = op == CALC_ADD
#         valid_sub = op == 'sub'
#         valid_mult = op == 'mult'
#         valid_div = op == 'div'
 
#         if valid_add || valid_sub || valid_mult || valid_div
#             @operation = op
#         end
#     end
#     def operation
#         @operation
#     end
#     def perform_operation
#         num1_valid = @number1.is_a?(Integer) || @number1.is_a?(Float)
#         num2_valid = @number2.is_a?(Integer) || @number2.is_a?(Float)
#         op_valid = @operation != nil
#         result = nil
        
#         if num1_valid && num2_valid && op_valid
#             if @operation == CALC_ADD
#                 result = @number1 + @number2
#             elsif @operation == 'sub'
#                 result = @number1 - @number2
#             elsif @operation == 'mult'
#                 result = @number1 * @number2
#             elsif @operation == 'div'
#                 result = @number1 / @number2
#             end 
#         end
#         result
#     end
# end

# #UI
# calc = Calculator.new
# puts "what calc do you want to do? (add, sub, mult, div)"
# calc.operation = gets.chomp
# puts "What's number 1?"
# calc.number1 = gets.chomp.to_f
# puts "What's number 2?"
# calc.number2 = gets.chomp.to_f
# puts 'Your result is '+calc.perform_operation.to_s