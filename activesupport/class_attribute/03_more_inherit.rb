require 'rubygems'
require 'active_support/core_ext/class/attribute_accessors'

class Api
  cattr_accessor :timeout

  def self.request
    puts "Request from #{name} will timeout in #{timeout} seconds"
  end
end

class TwitterApi < Api
end

class FacebookApi < Api
end

Api.request

Api.timeout = 60
Api.request

TwitterApi.timeout = 200
TwitterApi.request

FacebookApi.timeout = 100
FacebookApi.request

Api.request
TwitterApi.request
FacebookApi.request