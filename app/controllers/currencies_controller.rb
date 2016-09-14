class CurrenciesController < ApplicationController
  
  layout "admin"
  
  def index
    @currencies = Currency.all
  end

  def show
    @currency = Currency.find(params[:id])
  end

  def new
    @currency = Currency.new#({:name => "Default"})
  end

  def create
    # Instantiate a new object using form parameters
    @currency = Currency.new(currency_params)
    # Save the object
    if @currency.save
    # If save succeeds, redirect to the index action
      flash[:notice] = "Currency created successfully."
      redirect_to(:action => 'index')
    else
      #If save fails, redisplay the form so user can fix problems
     render('new')
    end
  end

  def edit
     @currency = Currency.find(params[:id])
  end

  def update
    # Find an existing object using form parameters
    @currency = Currency.find(params[:id])
    # Update the object
    if @currency.update_attributes(currency_params)
      # If update succeeds, redirect to the index action
       flash[:notice] = "Currency updated successfully."
      redirect_to(:action => 'index', :id => @currency.id)
    else
      # If update fails, redisplay the form so user can fix problems
      render('edit')
    end
  end

  def delete
    @currency = Currency.find(params[:id])
  end

  def destroy
    currency = Currency.find(params[:id]).destroy
    flash[:notice] = "Currency destroyed successfully."
    redirect_to(:action => 'index')
  end
  
  def home
    redirect_to(:controller => 'pages', :action => 'home')
  end

private

 def currency_params
  # same as using "params[:subject]", except that it:
  # - raises an error if :subject is not present
  # - allows listed attributes to be mass-assigned
  params.require(:currency).permit(:name, :iso)
  end

end