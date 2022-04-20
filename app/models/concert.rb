class Concert < ActiveRecord::Base
    belongs_to :venue
    belongs_to :band

    def hometown_show?
        if self.band.hometown = 
    end
    
    def introduction
        puts "Hello #{self.venue.city}!!!!! We are #{self.band.name} and we're from
        #{self.band.hometown}"
    end
end