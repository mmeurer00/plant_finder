# This is where the data will be stored
class PlantFinder::Plant
        @@plants = []
        attr_reader :common_name, :scientific_name, :family_common_name, :genus
    def initialize(plant_hash)
        @common_name = plant_hash["common_name"]
        @scientific_name = plant_hash["scientific_name"]
        @family_common_name = plant_hash["family_common_name"]
        @genus = plant_hash["genus"]
        @@plants << self
    end

    def self.find_by_common_name(name) 
        @@plants.find {|plant| plant.common_name.downcase == name.downcase}
        binding.pry
    end

end