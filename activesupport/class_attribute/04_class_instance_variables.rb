require 'rubygems'

class Api
  @timeout = 60

  def self.request
    puts "Request from #{name} will timeout in #{@timeout} seconds"
  end
end

Api.request

Api.instance_variable_set("@timeout", 90)
Api.request
