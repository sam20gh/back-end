class Airport < ApplicationRecord
    has_many :routes
    has_many :flights, through: :routes
    has_many :my_airports
    has_many :users, through: :my_airports
end
