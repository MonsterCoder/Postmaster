require "uri" 
require "net/http" 

module PostsHelper
    def replypost(post)
    post.replies.each do |reply|
      params = { 
        'action'=>'addreply',
        'forum'=>'90',
        'topic'=>'68522',
        'membername'=>reply.membername,
        'password'=>reply.password,
        'inpost'=>reply.inpost,
        'Submit'=>'submit',
      }
      
      @x = Net::HTTP.post_form(URI.parse(post.link), params) 
 
    end
  end
end
