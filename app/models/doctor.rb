# This model is missing the relationship to patients.
# Now, we're going to establish the relationship.
class Doctor < ApplicationRecord
  has_many :patients
end
