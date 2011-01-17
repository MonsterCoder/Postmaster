require "uri" 
require "net/http" 
require 'open-uri'
require 'nokogiri'
require 'hpricot'

module PostsHelper
    def replypost(post)
          post.replies.each do |reply|
            params = { 
              'action'=>'addreply',
              'forum'=>post.forum,
              'topic'=>post.topic,
              'membername'=>reply.membername,
              'password'=>reply.password,
              'inpost'=>reply.inpost+ " #{Time.now}",
              'Submit'=>'submit',
            }
            
            link = "http://163.ca/cgi-bin/lb5000/post.cgi?action=reply&forum=#{post.forum}&topic=#{post.topic}"
            
            @x = Net::HTTP.post_form(URI.parse(link), params) 
 
          end
          p "replied #{post.to_s}}"
  end
  
  def checkpage(post)
      @content =''
      pages= [0]
      #pages= [0] if (post.user.email=='postmaster@gmail.com')
      postlink="topic=#{post.topic}"
      pages.each { |page|
        
        weblink="http://163.ca/cgi-bin/lb5000/forums.cgi?forum=#{post.forum}&show=#{page}"
	      @content += Net::HTTP.get(URI.parse(weblink))
        return true if @content.include?(postlink)
      }

      false
  end

end
