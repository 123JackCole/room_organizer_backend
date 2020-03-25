class Storage < ApplicationRecord
    belongs_to :room
    has_many :items
    accepts_nested_attributes_for :items

end
