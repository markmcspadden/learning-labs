require 'rubygems'
require 'active_support/core_ext/class/attribute'

class Api
  class_attribute :headers
  self.headers = ["API-KEY"]

  def self.request
    puts "Request from #{name} has headers: #{headers.join(", ")}"
  end
end

class TwitterApi < Api
end

class FacebookApi < Api
end

Api.request
TwitterApi.request

TwitterApi.headers << "OUATH-TOKEN"
TwitterApi.request

Api.request
TwitterApi.request
FacebookApi.request