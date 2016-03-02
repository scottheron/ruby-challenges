class Calculator
    
    def initialize (mode, num1, num2)
        @@mode = mode
        @@num1 = num1
        @@num2 = num2
    end
    
    def mode
        case @@mode
        when "add"
            result = @@num1.to_i + @@num2.to_i
            puts "#{@@num1} + #{@@num2} = #{result}" 
        when "sub"    
            result = @@num1.to_i - @@num2.to_i
            puts "#{@@num1} - #{@@num2} = #{result}"
        when "mult"    
            result = @@num1.to_i * @@num2.to_i
            puts "#{@@num1} * #{@@num2} = #{result}"    
        when "div"    
            result = @@num1.to_i / @@num2.to_i
            puts "#{@@num1} / #{@@num2} = #{result}"
        end
    end
end

puts "What would you like to do? add, sub, mult or div?"
mode = gets.chomp
puts "Enter first number: "
num1 = gets.chomp
puts "Enter second number: "
num2 = gets.chomp
calc = Calculator.new(mode, num1, num2)

calc.mode
