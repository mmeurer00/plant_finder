# All data will be grabbed and stored here
class PlantFinder::API
    def initialize
        @url = "https://trefle.io/api/v1/plants?token=2dKZGFV1m10KlvMNTV1BJ8v9me7MKyaT1eBXf7XlfzE"
    end
    
    def get_plant_data
        plant_hash = HTTParty.get(@url)
        plant_array = plant_hash["data"]
        self.create_plant_objects(plant_array)
    end   

    def create_plant_objects(plant_array)
        plant_array.each do |plant_hash|
            PlantFinder::Plant.new(plant_hash)
            #binding.pry
        end
    end
    
end

