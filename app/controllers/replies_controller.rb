class RepliesController < ApplicationController
  def new
    @post = current_user.posts.find_by_id(params[:post_id])
    @reply = @post.replies.build
    render :partial => 'shared/replyform'
  end
  
  def create
    @post = current_user.posts.find_by_id(params[:post_id])
    @reply = @post.replies.build(params[:reply])
    
    if @reply.save
      respond_to do |format|
        format.html { redirect_to :controller=>:home, :action=>:index, :notice => 'Reply was successfully created.' }
      end
    else
      respond_to do |format|
        format.html { render :partial => 'shared/replyform' , :error => "Creating reply failed." }  
      end    
    end
  end
end
