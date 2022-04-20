class Band < ActiveRecord::Base
    has_many :concerts
    has_many :venues, through: :concerts

    def play_in_venue(venue, date)
        
    end

    def all_introductions
      puts  "Hello #{self.venue.city}!!!!! We are #{self.name} and we're from
    #{self.hometown}"
    end

    def self.most_performances
        
    end
end