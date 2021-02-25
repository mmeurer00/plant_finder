# This is where the data will be stored
class PlantFinder::Plant
        @@plants = []
    def initialize(plant_hash = nil)
        @@plants << plant_hash
        #binding.pry
    end

    def organized_plant_hash
        keys = ["common_name", "scientific_name"]
        @@plants.map do |hash|
            hash.select { |k, _| keys.include? k }
        end
    end

    def find_by_common_name(name)
        @@plants.each do |hash| 
            if hash["common_name"] == name
                hash.each do |key, value|
                    puts "#{key}= #{value}"
                end
            end
        end
        binding.pry
    end

end