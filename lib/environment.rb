# require "topfiveiv/version"

require_relative './topfiveiv/version.rb'
require_relative './topfiveiv/cli.rb'
require_relative './topfiveiv/scraper.rb'
require_relative './topfiveiv/nfl_player.rb'

module Topfiveiv
  class Error < StandardError; end
  # Your code goes here...
end
