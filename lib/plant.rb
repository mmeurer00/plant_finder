# This is where the data will be stored
class PlantFinder::Plant
        @@plants = []
    def initialize(plant_hash=nil)
        @common_name = plant_hash["common_name"]
        @scientific_name = plant_hash["scientific_name"]
        @family_common_name = plant_hash["family_common_name"]
        @genus = plant_hash["genus"]
    end

    def find_by_common_name(name) 
        @common_name.find(name)
        binding.pry
    end

end