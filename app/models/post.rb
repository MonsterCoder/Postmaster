class Post < ActiveRecord::Base
  belongs_to :user
  has_many :replies, :dependent => :delete_all 
end
