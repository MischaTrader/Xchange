class PagesController < ApplicationController

   layout "home"
   
   def show
     render template: "pages/#{params[:page]}"
   end
end


