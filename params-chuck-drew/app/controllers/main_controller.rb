class MainController < ApplicationController

  def number_cubed
    @number = params[:number].to_i**3
    render "number_answer.html.erb"
  end

  def numbers_div
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @number1 % @number2 == 0
      @answer = "#{@number1} is divisible by #{@number2}"
    else
      @answer = "#{@number1} is NOT divisible by #{@number2}"
    render "numbers_div.html.erb"
    end
  end

  def string_length
    @word = params[:word]
    @input_length = params[:word].length
    @characters = "#{@word} is #{@input_length} characters long."
    render "string_length.html.erb"
  end

  def palindrome
    @word = params[:word]
    if @word == @word.reverse
      @answer = "#{@word} is a palindrome!"
    else
      @answer = "#{@word} is a NOT palindrome!"
    end
    render "palindrome.html.erb"
  end

  def madlib
    @noun = params[:noun]
    @verb = params[:verb]
    @adjective = params[:adjective]
    @adverb = params[:adverb]
    @madlib = "My #{@noun} is #{@verb}. It is #{@adjective} and #{@adverb}."
    render "madlib.html.erb"
  end
end
