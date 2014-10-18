class QuestionsController < ApplicationController
  def input
  end

  def further_actions
  end
  
  def compute
    diameter = params[:input][:diameter]

    if( diameter.to_i > 0 ) 
      rate_1 = 7.5
      rate_2 = 15.0
      rate_3 = 30.0

      @value_1 = ( rate_1 * 3.14 ) * ( ( diameter.to_f / 200.0 ) ** 2 )
      @value_2 = ( rate_2 * 3.14 ) * ( ( diameter.to_f / 200.0 ) ** 2 )
      @value_3 = ( rate_3 * 3.14 ) * ( ( diameter.to_f / 200.0 ) ** 2 )
    else
      flash.now[:error] = "Invalid Input"
      render 'home/home'
    end
  end

  def api
    diameter = params[:diameter]
    if( diameter.to_i != 0 ) 
      some_data = {'message' => diameter }
      render :json => some_data
    else
      render :json => { 'message' => 'Error' }
    end
  end
end
