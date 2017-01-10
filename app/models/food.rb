class Food < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  belongs_to :venue

  # Indirect associations

  # Validations

end
