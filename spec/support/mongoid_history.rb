RSpec.configure do |config|
  config.before :each do
    class Tracker
      include Mongoid::History::Tracker
    end
    Mongoid::History.tracker_class_name = 'Tracker'
    Mongoid::History.modifier_class_name = 'User'
  end
  config.after :each do
    Mongoid::History.tracker_class_name = nil
  end
end
