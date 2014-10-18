class QuestionsController < ApplicationController
  def new
  end
  
  def compute
    diameter = params[:input][:diameter]
    rate_1 = 7.5
    rate_2 = 15.0
    rate_3 = 30.0

    @value_1 = ( rate_1 * 3.14 ) * ( ( diameter.to_f / 200.0 ) ** 2 )
    @value_2 = ( rate_2 * 3.14 ) * ( ( diameter.to_f / 200.0 ) ** 2 )
    @value_3 = ( rate_3 * 3.14 ) * ( ( diameter.to_f / 200.0 ) ** 2 )
  end
end
