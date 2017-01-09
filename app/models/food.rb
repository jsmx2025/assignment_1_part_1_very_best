class Food < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
