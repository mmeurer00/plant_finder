# gets inputs and will show strings/ display
class PlantFinder::CLI
    def run
        greeting
        menu
    end

    def greeting
        puts "\n Welcome to Plant Finder!"
    end

    def menu
        puts " \nPlease choose between the common name and keyword search. 
If you are unsure of the plant's exact common name, refer to the keyword search. \n "
#For example, if you wanted to know more about a specific palm tree, 
#but you're not sure of the common name, simply enter 'palm', as you would 'pine' for pine trees.\n "
    end
end