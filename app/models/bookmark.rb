class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :food

  belongs_to :user

  # Indirect associations

  # Validations

end
