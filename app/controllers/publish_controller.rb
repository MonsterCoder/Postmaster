class PublishController < ApplicationController
  def process  
    users = User.find(:all)
    users.each do |user|
      user.posts.each do |post|
        post.run
      end
    end
  end
end
