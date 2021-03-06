# gets inputs and will show strings/ display

class PlantFinder::CLI
    def run
        greeting
        PlantFinder::API.new.get_plant_data
        list
        input
        goodbye
    end

    def greeting
        puts "\nWelcome to Plant Base!".colorize(:yellow)
        puts "
        ,,,                      ,,,
       {{{}}    ,,,             {{{}}    ,,,
    ,,, ~Y~    {{{}},,,      ,,, ~Y~    {{{}},,,
   {{}}} |/,,,  ~Y~{{}}}    {{}}} |/,,,  ~Y~{{}}}
    ~Y~ \|{{}}}/\|/ ~Y~  ,,, ~Y~ \|{{}}}/\|/ ~Y~  ,,,
    \|/ \|/~Y~  \|,,,|/ {{}}}\|/ \|/~Y~  \|,,,|/ {{}}}
    \|/ \|/\|/  \{{{}}/  ~Y~ \|/ \|/\|/  \{{{}}/  ~Y~
    \|/\\|/\|/ \\|~Y~//  \|/ \|/\\|/\|/ \\|~Y~//  \|/
    \|//\|/\|/,\\|/|/|// \|/ \|//\|/\|/,\\|/|/|// \|/".colorize(:magenta)
   puts " ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ".colorize(:green)
        puts "\nThe best data base for looking up plant classification!".colorize(:yellow)
        puts "\n---___--- * Loading Data * ---___---".colorize(:magenta)
    end

    def list
        plant_list = PlantFinder::Plant.all
        puts "\n ~COMMON NAMES LIST~ \n ".colorize(:green)
        plant_list.each do |plant|
            puts " \n -> #{plant.common_name}".colorize(:green)
        end
    end

    def input
        while true
            puts " \nPlease enter the common name of a plant species chosing from the list above (enter 'exit' to close program):\n".colorize(:yellow)
            name = gets.chomp
            if name == "exit" 
                return
            end
            choosen_plant = PlantFinder::Plant.find_by_common_name(name)
            if choosen_plant
                puts "\n-Scientific name: #{choosen_plant.scientific_name} \n
-Family common name: #{choosen_plant.family_common_name}\n
-Family: #{choosen_plant.family} \n
-Genus: #{choosen_plant.genus}".colorize(:green)
            else 
            puts "\nSorry we don't have that plant species in our system quite yet!\n ".colorize(:magenta)
            end
        end
    end

    def goodbye
        puts "\nThank you for using Plant Base!\n ".colorize(:yellow)
    end
end