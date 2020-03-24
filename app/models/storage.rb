class Storage < ApplicationRecord
    belongs_to :room
    belongs_to :user
    has_many :items

end
