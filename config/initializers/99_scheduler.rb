#
# config/initializers/scheduler.rb
require 'rufus-scheduler'

# Let's use the rufus-scheduler singleton
#
s = Rufus::Scheduler.singleton


# Stupid recurrent task...
#
s.every '1m' do

  Rails.logger.info "Check Stations #{Time.now}"
end