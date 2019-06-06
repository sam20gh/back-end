class Flight < ApplicationRecord
    has_many :routes
    has_many :airports, through: :routes
    has_many :my_flights
    has_many :users, through: :my_flights
end
