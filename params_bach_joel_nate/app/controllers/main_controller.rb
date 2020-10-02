class MainController < ApplicationController
  def cubed
    if params[:number].to_i.class == Integer
      @cubed = (params[:number].to_i) ** 3
    else
      @cubed = "Error, not a number."
    end
        render "cubed.html.erb"
  end

  def divisible
    if params[:num1].to_i % params[:num2].to_i == 0
      @divisible = "Is evenly divisible"
    else
      @divisible = "Is not evenly divisible"
    end
    render "divisible.html.erb"
  end

  def letter_nums
    @letter_nums = params[:letter].length
    render "letter_nums.html.erb"
  end

  def palindrome
    if params[:word] == params[:word].reverse
      @palindrome = "is a palindrome"
    else
      @palindrome = "nah"
    end
    render "palindrome.html.erb"
  end

  def short_story
    @noun = params[:noun]
    @verb = params[:verb]
    @adjective = params[:adjective]
    @adverb = params[:adverb]
    @sentence = "The #{params[:noun]} #{params[:adverb]} #{params[:verb]} and it was a #{params[:adjective]} day."
    render "short_story.html.erb"
  end
end
