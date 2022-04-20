class Venue < ActiveRecord::Base
    has_many :concerts
    has_many :bands, through: :concerts

    def concert_on(date)

    end
    
    def most_frequent_band
        
    end
end