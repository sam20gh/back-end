class User < ApplicationRecord
    has_many :my_flights
    has_many :flights, through: :my_flights
    has_many :my_airports
    has_many :airports, through: :my_airports

    has_secure_password
end
