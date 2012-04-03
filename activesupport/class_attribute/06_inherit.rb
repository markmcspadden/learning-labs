require 'rubygems'

class Api
  class << self
    attr_accessor :timeout
  end

  def self.request
    puts "Request from #{name} will timeout in #{timeout} seconds"
  end
end

class TwitterApi < Api
end

Api.request

Api.timeout = 60
Api.request

TwitterApi.request

Api.request
TwitterApi.request