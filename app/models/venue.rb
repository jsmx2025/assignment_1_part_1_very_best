class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :bookmarks,
             :dependent => :nullify

  # Indirect associations

  has_many   :foods,
             :through => :bookmarks,
             :source => :food

  # Validations

end
