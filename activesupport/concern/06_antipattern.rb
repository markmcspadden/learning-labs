require 'active_support/concern'

module Talent
  extend ActiveSupport::Concern

  included do
    class << self
      attr_accessor :talent_pool
    end
  end
end

module Name
  extend ActiveSupport::Concern

  include Talent

  included do
      
  end

  module InstanceMethods
    attr_accessor :name

    def first_name
      name.to_s.split(" ").first
    end
    def last_name
      name.to_s.split(" ")[1..-1].join(" ")
    end
    def full_name
      name.to_s
    end
    def possible_username
      full_name.downcase.gsub(" ","")
    end
  end

  module ClassMethods
    def find_by_username(username)
      self.talent_pool.detect{ |u| u.possible_username == username }
    end
  end
end

class User
  include Name
end

$: << File.dirname(File.expand_path(__FILE__))
require 'concern_test'