class HomeController < ApplicationController
 
layout 'main_app'

  def index
 
  end
 
   def single
     render('index')
   end
end
