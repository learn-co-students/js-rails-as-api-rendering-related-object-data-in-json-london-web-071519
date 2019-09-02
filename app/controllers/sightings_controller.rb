class SightingsController < ApplicationController

    def show
        sighting = Sighting.find_by(id: params[:id])
        if sighting
            render json: {id: sighting.id, bird: sighting.bird, location: sighting.location}
        else   
            render json: {message: "Sighting not found"}
        end
    end

end
