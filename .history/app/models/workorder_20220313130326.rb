class Workorder < ApplicationRecord
    belongs_to :site
    has_many :technicians
end
