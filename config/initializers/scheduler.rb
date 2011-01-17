require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

  scheduler.every  '30m' do
    PostsController.new.dowork
  end


