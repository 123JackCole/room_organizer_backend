class User < ApplicationRecord
    has_many :rooms 
    has_many :storages, through: :rooms 
    has_many :storages
    accepts_nested_attributes_for :rooms

    validates :name, uniqueness: true

end
