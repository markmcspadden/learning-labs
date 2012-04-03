require 'rubygems'

class Api
  class << self
    attr_accessor :timeout
  end

  def self.request
    puts "Request from #{name} will timeout in #{timeout} seconds"
  end
end

Api.request

Api.timeout = 60
Api.request
