class Storage < ApplicationRecord
    belongs_to :room
    has_many :items

end
