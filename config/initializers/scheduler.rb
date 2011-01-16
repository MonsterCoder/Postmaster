require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

  scheduler.every  '60m' do
    PostsController.new.dowork
  end


