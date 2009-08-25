require "machinist/active_record"
require "sham"
require "faker"

Dir.glob(File.join(File.dirname(__FILE__), "/blueprints/*.rb")).each { |f| require f }
