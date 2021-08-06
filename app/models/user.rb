class User < ApplicationRecord
    has_secure_password
    belongs_to :city 
    has_many :gossips
    belongs_to :city, class_name: "city", foreign_key: "city_id"
end
