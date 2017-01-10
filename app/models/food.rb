class Food < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_one    :venue,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
