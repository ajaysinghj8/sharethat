class HomeController < ApplicationController
 
layout 'main_app'

  def index
  	@limit = 4
  	@offset = 0
    @posts_all = BlogPost.newest_first @limit,@offset
  end
 
   def single
     render('index')
   end
end
