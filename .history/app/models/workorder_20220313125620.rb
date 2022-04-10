class Workorder < ApplicationRecord
    belongs_to :site
    has_many :technicians
    has_one :category
end
