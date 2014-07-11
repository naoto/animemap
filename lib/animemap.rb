require "animemap/version"

module Animemap

  require 'animemap/config'
  require 'animemap/agent'
  require 'animemap/anime'

  def self.location(region)
    Agent.new.region(region)
  end

end
