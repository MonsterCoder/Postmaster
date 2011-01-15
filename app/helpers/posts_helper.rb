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
      
      link = "http://163.ca/cgi-bin/lb5000/post.cgi?action=reply&forum=#{post.forum}&topic=#{post.topic}"
      
      @x = Net::HTTP.post_form(URI.parse(link), params) 
 
    end
  end
end
