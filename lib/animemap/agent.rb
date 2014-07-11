require 'json'
require 'rexml/document'
require 'open-uri'

module Animemap
  class Agent

    attr :format

    def initialize(url = nil)
      @url = url || "http://animemap.net/api/table/"
      @config = Config.load
      @format = :json
    end

    def region(str)
      get(@config[str])
    end

    private
      def get(resource)
        data = []
        open("#{@url}#{resource}.#{@format.to_s}") do |response|
          JSON.parse(response.read)['response']['item'].each do |item|
            data << Anime.new(item)
          end
        end
        data
      rescue
        []
      end

  end
end
