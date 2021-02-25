# gets inputs and will show strings/ display
require_relative '../lib/api.rb'

class PlantFinder::CLI
    def run
        greeting
        PlantFinder::API.new.get_plant_data
        input
    end

    def greeting
        puts "\n Welcome to Plant Base!"
        puts "\n ---___---Loading Data---___---"
    end

    def input
        puts " \nPlease enter the common name of a plant species."
        name = gets.chomp
        puts PlantFinder::Plant.find_by_common_name(name)

    end

end