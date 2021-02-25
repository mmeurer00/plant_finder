# gets inputs and will show strings/ display

class PlantFinder::CLI
    def run
        greeting
        PlantFinder::API.new.get_plant_data
        input
    end

    def greeting
        puts "\n Welcome to Plant Base!"
        puts "\n ---___--- * Loading Data * ---___---"
    end

    def input
        puts " \nPlease enter the common name of a plant species:"
        name = gets.chomp
        choosen_plant = PlantFinder::Plant.find_by_common_name(name)
        puts "\n-Scientific name: #{choosen_plant.scientific_name} \n
-Family common name: #{choosen_plant.family_common_name}\n
-Genus: #{choosen_plant.genus} \n"
    end

end