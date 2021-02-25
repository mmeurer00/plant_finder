# gets inputs and will show strings/ display
require_relative '../lib/api.rb'

class PlantFinder::CLI
    def run
        greeting
        PlantFinder::API.new.create_plant_objects(plant_array)
        menu
    end

    def greeting
        puts "\n Welcome to Plant Base!"
        puts "\n ---___---Loading Data---___---"
    end

    def input
        puts " \nPlease enter the common name of a plant species."
        user_input = gets.chomp
    end

end