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

end
