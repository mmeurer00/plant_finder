
class PlantFinder::Plant
        @@plants = []
        @@common_names = []
        attr_reader :common_name, :scientific_name, :family_common_name, :genus, :family
    def initialize(plant_hash)
        @common_name = plant_hash["common_name"]
        @scientific_name = plant_hash["scientific_name"]
        @family_common_name = plant_hash["family_common_name"]
        @genus = plant_hash["genus"]
        @family = plant_hash["family"]
        @@plants << self
        @@common_names << plant_hash["common_name"]
    end
   
    def self.find_by_common_name(name)
        new_name = name.capitalize
        if @@common_names.include?(new_name)
            @@plants.find { |plant| plant.common_name == new_name}
        end
    end
 
end