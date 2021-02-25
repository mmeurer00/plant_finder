# This is where the data will be stored
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
    # will return the first plant object / class method  down below
    def self.find_by_common_name(name)
        new_name = name.capitalize
        if @@common_names.include?(new_name)
            @@plants.find { |plant| plant.common_name.downcase == new_name.downcase }
        end
    end
    #instance method 
    def common_name
        @common_name
    end

    def scientific_name
        @scientific_name
    end

    def family_common_name
        @family_common_name
    end

    def genus
        @genus
    end

    def family
        @family
    end
end