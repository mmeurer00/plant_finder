# This is where the data will be stored
class PlantFinder::Plant
    @@plants = []
    def initialize(plant_hash=nil)
        if plant_hash != nil
            plant_hash.each do |key, value|
                self.class.attr_accessor(key)
                self.send("#{key}=", value)
            end
        end
        @@plants << self
    end

    def find_by_common_name(name = nil)
        if name != nil
            @@plants.detect {|plant| plant.name == name}
        end
    end


    def self.all
        @@plants
    end
end