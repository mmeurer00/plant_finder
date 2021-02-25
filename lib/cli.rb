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
        while true
            puts " \nPlease enter the common name of a plant species:\n"
            name = gets.chomp
            if name == "exit" 
                return
            end
            choosen_plant = PlantFinder::Plant.find_by_common_name(name)
            if choosen_plant
                puts "\n-Scientific name: #{choosen_plant.scientific_name} \n
-Family common name: #{choosen_plant.family_common_name}\n
-Genus: #{choosen_plant.genus} \n
-Family: #{choosen_plant.family}"
            else 
            puts "\nSorry we don't have that plant species in our system quite yet!\n "
            end
        end
    end
end