class MyAirportsController < ApplicationController
    def show 
       @my_airports = MyAirport.all
       render json: @my_airports
    end 
    def like
        user = get_current_user
        if user
            airport_instance = Airport.find_or_create_by(name: params[:nameAirport], iatacode: params[:codeIataAirport], icaocode: params[:codeIcaoAirport])
            my_airport_instance = MyAirport.find_by(user: user, airport: airport_instance)
            if my_airport_instance
                my_airport_instance.destroy
            else
                MyAirport.create(user: user, airport: airport_instance)
            end

            render json: { airport: airport_instance }
        else
            render json: { error: 'Invalid token.' }, status: 400
        end
    end
end
