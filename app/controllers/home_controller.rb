class HomeController < ApplicationController
 
layout 'main_app'
 
   def index
   	@category = BlogCategory.all
    @popular_posts = BlogPost.popular_posts 3
    @latest_comment = BlogComment.newest_first 3
    @latest_users = BlogUser.newest_first 6
   	@limit = 4
  	@offset = 0
    @posts_all = BlogPost.newest_first @limit,@offset
   end
 
   def single
     render('index')
   end
end
