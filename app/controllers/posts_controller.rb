class PostsController < ApplicationController
  def new
  end
  
  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      respond_to do |format|
        format.html { redirect_to( :back, :notice => 'Post was successfully created.') }
      end
    else
      respond_to do |format|
        format.html { render :back, :error => "Creating post failed." }  
      end    
    end
  end
  
  def destroy
     post=  current_user.posts.find_by_id(params[:id])
      current_user.posts.delete(post)
      redirect_to :back
  end

end
