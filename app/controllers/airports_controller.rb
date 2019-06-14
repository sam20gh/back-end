class AirportsController < ApplicationController
    def like
        input = Airport.new(params.permit(:name, :iatacode, :icaocode))
        if(input.save)
            render json: {airport:  input.id}
        else
            render json: {error: 'Invalid id.'}, state: 404
        end
    end

    def show 
       @airports = Airport.all
       render json: @airports
    end 
end
