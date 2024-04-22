class OmniController < ApplicationController
  def apple
    render({ :template => "omnicalc_templates/home" })
  end

  def banana
    render({ :template => "omnicalc_templates/square" })
  end

  def clementine 
    @input = params[:number].to_f
    @result = @input ** 2

    render({ :template => "omnicalc_templates/square_results" })
  end

  def dragonfruit 
    render({ :template => "omnicalc_templates/square_root" })
  end

  def eggplant
    @input = params[:user_number].to_f
    @result = Math.sqrt(@input)

    render({ :template => "omnicalc_templates/sqroot_results" })
  end

  def fruit
    render({ :template => "omnicalc_templates/payment" })
  
  end

  def grape
    @apr_input = params.fetch("user_apr").to_f
    @apr_final = @apr_input.to_fs(:percentage, {:precision => 4})
  
    @years_final = params.fetch("user_years").to_i
  
    @principal_input = params.fetch("user_pv").to_f
    @principal_final = @principal_input.to_fs(:currency)
  
    @r = (@apr_input.to_f / 100) /12
    @n = @years_final.to_i * 12
    @pv = @principal_input
    @numerator = @r*(@pv)
    @denominator = 1-(1+@r)**-@n
  
    @payment_calc = @numerator/@denominator
    @payment_result = @payment_calc.to_fs(:currency)
    
    render({ :template => "omnicalc_templates/payment_results" })
  end

  def happy
    render({ :template => "omnicalc_templates/random" })
  end

  def igloo
    @minimum = params.fetch("user_min").to_f
    @maximum = params.fetch("user_max").to_f
    @random_result = rand(@minimum...@maximum)
    render({ :template => "omnicalc_templates/random_results" })
  end
end
