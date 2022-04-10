class Workorder < ApplicationRecord
    belongs_to :site
    has_many :technicians

    CATEGORY_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    ['Complete', 'complete']
  ]
end
