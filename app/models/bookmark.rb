class Bookmark < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :dependent => :destroy

  has_one    :userprofile,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
