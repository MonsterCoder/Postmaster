require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

  scheduler.in  '1m' do
    controller=   PostsController.new
    if !controller.check
        controller.run
    end
  end


