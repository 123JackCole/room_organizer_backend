class User < ApplicationRecord
    has_many :rooms 
    has_many :storages, through: :rooms 
    has_many :storages

    validates :name, uniqueness: true

end
