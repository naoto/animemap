require 'yaml'

module Animemap
  class Config

    def self.load
      new("config/setting.yaml")
    end

    def initialize(path)
      @path = path
      @data = read
    end

    def [](key)
      @data[key]
    end

    private
      def read
        YAML.load_file(@path)
      end

  end
end
