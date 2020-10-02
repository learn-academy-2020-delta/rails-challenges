class MainController < ApplicationController
    def cubed
        @answer = params[:number].to_i ** 3
        #render 'cubed.html.erb'
    end

    def evenly_divisible
        if params[:number1].to_i % params[:number2].to_i == 0
            @answer = "#{params[:number1]} is evenly divisible by #{params[:number2]}."
        else
            @answer = "#{params[:number1]} is not evenly divisible by #{params[:number2]}."
        end
    end

    def counter
        @answer = "#{params[:string].capitalize} has #{params[:string].length} characters."
    end

    def palindrome
        if params[:word] == params[:word].reverse
            @answer = "#{params[:word].capitalize} is a palindrome."
        else
            @answer = "#{params[:word].capitalize} is not a palindrome."
        end
    end

    def story
        @answer = "The #{params[:noun]} would #{params[:verb]} #{params[:adjective]} stuff #{params[:adverb]}."
    end
end
