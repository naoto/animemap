module Animemap
  class Anime

    attr_reader :title, :time,:url, :station, :state, :next
    attr_reader :episode, :cable, :today, :week

    def initialize(data)
      @title = data['title']
      @time = data['time']
      @url = data['url']
      @station = data['station']
      @state = data['state']
      @next = data['next']
      @episode = data['episode']
      @cable = data['cable']
      @today = data['today']
      @week = data['week']
    end

  end
end
