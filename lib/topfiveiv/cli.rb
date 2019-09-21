# require_relative '../lib/topfiveiv/scraper.rb'
# require_relative '../lib/topfiveiv/nfl_player.rb'
require 'pry'
require 'colorize'

class CLI

    def run
        scrape 
        welcome
    end

    def welcome
        puts "Welcome, this is the player roster for the Patriots football team!"
        sleep 1
        print "To get started, type 'patriots' to see all the players: ".colorize(:green)
        input = gets.chomp
        if input == "patriots"
            list_roster
        else
            puts "Invalid input"
            welcome 
        end
    end

    def list_roster
# here's the roster for the team patriots, choose player by number
        # if input == 'patriots'
         Nflplayer.all.each_with_index do |player, i|
            puts "#{i + 1}. #{player}"
         end

    end

    def scrape 
        Scraper.scrape
    end

end