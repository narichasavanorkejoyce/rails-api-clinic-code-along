# This model is missing the relationship to patients.
# Now, we're going to establish the relationship.
class Doctor < ApplicationRecord
  # one-to-many
  has_many :primary_care_recipient, class_name: 'Patient'

  # many-to-many
  has_many :patients, through: :appointments
  has_many :appointments, dependent: :destroy

  # validations
  validates :given_name, presence: true
  validates :family_name, presence: true
end
