class BlogPost < ActiveRecord::Base

#scope :visible, lambda { where(:visible => true)  }
#scope :invisible, lambda { where(:visible => false)  }
#scope :sorted, lambda { order("users.created_at ASC") }
scope :popular_posts, lambda {|limit| {:limit=>limit,order: 'views DESC'}}
scope :newest_first, lambda { |limit,offset| { :limit => limit,:offset => offset,  } }
#scope :search, lambda { |query|
 #      where(["name LIKE ?","%#{query}%"])  }


end
