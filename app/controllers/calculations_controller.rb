class CalculationsController < ApplicationController
  def instructions
  end

  def square
    @input = params["num"]
    @square = @input.to_i ** 2
  end


  def sqrt
    @input = params["num"]
    @sqrt = @input.to_i ** 0.5
    render "square_root"
  end

  def pmt

    @rate = params["rate"].to_f
    @nper = params["nper"].to_i
    @pv = params["pv"].to_f

@rate_decimal = (@rate/12)/100
    @rate_factor = 1+((@rate/12)/100)
   @fv_factor= @rate_factor**@nper
   @multiplier = @fv_factor/(@fv_factor - 1)



    @pmt = @pv * @rate_decimal * @multiplier
    @payment = @pmt.round(2)

  end
end
