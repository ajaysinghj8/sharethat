class BlogUser < ActiveRecord::Base


	scope :newest_first, lambda { |limit| {:limit =>limit} }
end
