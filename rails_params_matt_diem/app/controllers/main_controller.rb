class MainController < ApplicationController
    def cubed
        @cubed_num = params[:number].to_i ** 3
        render "cubed.html.erb"
    end

    def divisible_by
        @num1 = params[:number1].to_i
        @num2 = params[:number2].to_i
        if @num1 % @num2 == 0
            @result = "#{@num1} is evenly divisible by #{@num2}"
        else
            @result = "#{@num1} is NOT evenly divisible by #{@num2}"
        end
        render "modulo.html.erb"
    end

    def length
        @string = params[:string]
        @amount_char = "#{@string} is #{@string.length} characters long"
        render "length.html.erb"
    end

    def palindrome
        @string = params[:string]
        if @string == @string.reverse
            @result = "#{@string} is a palindrome"
        else
            @result = "#{@string} is NOT a palindrome"
        end
        render "palindrome.html.erb"
    end

    def madlib
        @noun = params[:noun]
        @noise = params[:noise]
        @adjective = params[:adjective]
        @animal = params[:animal]
        @result = "#{@adjective} Macdonald had a #{@noun}, E-I-E-I-O
        and on that #{@noun} he had an #{@animal}, E-I-E-I-O
        with a #{@noise} #{@noise} here
        and a #{@noise} #{@noise} there,
        here a #{@noise}, there a #{@noise},
        everywhere a #{@noise} #{@noise},
        #{@adjective} Macdonald had a #{@noun}, E-I-E-I-O."
        render "madlib.html.erb"
    end

end
