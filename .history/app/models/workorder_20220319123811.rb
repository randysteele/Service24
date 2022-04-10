class Workorder < ApplicationRecord
    belongs_to :site
    has_many :technicians

    CATEGORY_OPTIONS = [
    ['HVAC', 'HVAC'],
    ['REFRIGERATION', 'REFRIGERATION']
  ]
end
