class Room < ApplicationRecord
    belongs_to :user
    has_many :storages
    has_many :items, through: :storages 
    has_many :items 

end
