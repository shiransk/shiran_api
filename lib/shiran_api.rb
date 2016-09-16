require "shiran_api/version"
require 'unirest'

module ShiranApi
  class Parks

    attr_accessor :score, :park, :psa

    def initialize(hash)
      @score = hash["score"]
      @park = hash["park"]
      @psa = hash["psa"]
    end

    def self.all 
     parks_array = Unirest.get("https://data.sfgov.org/resource/c86s-zvb2.json").body
     parks_array
    end

  end
end
