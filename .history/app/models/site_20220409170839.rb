class Site < ApplicationRecord
  belongs_to :client
  has_many :workorders

  CATEGORY_OPTIONS = [
    ['HVAC', 'HVAC'],
    ['REFRIGERATION', 'REFRIGERATION']
  ]

end
