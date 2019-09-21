require 'nokogiri'
require 'open-uri'
require 'pry'


class Scraper

    url = 'https://www.patriots.com/team/players-roster/'

    def self.scrape
        html = Nokogiri::HTML(open(url))
        html.css('..nfl-o-roster__player-name a').each do |player|
            name = player.css('.nfl-o-roster__player-name a').text
            url = player.css('.nfl-o-roster__player-name a')[0].attributes['href'].value
            Nflplayer.new(name,url)
        end 
       
        binding.pry
        # nfl_players = patriots.css('.nfl-o-roster__player-name a')
        # binding.pry


        # patriots.each {|name| name.css('.nfl-o-roster__player-name a').text}
    end

end