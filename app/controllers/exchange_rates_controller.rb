class ExchangeRatesController < ApplicationController
  
 layout false
  
  def index
    @exchangerates = ExchangeRate.all
  end

  def show
    @exchangerate = ExchangeRate.find(params[:id])
  end

  def new
    @exchangerate = ExchangeRate.new#({:name => "Default"})
  end

  def create
    # Instantiate a new object using form parameters
    @exchangerate = ExchangeRate.new(exchangerate_params)
    # Save the object
    if @exchangerate.save
    # If save succeeds, redirect to the index action
      flash[:notice] = "exchange rate created successfully."
      redirect_to(:action => 'index')
    else
      #If save fails, redisplay the form so user can fix problems
     render('new')
    end
  end

private

 def exchangerate_params
  # same as using "params[:subject]", except that it:
  # - raises an error if :subject is not present
  # - allows listed attributes to be mass-assigned
  params.require(:exchangerate).permit(:from_currency_id, :to_currency_id, :rate)
  end

end