# Model for clinician
class Clinician < ActiveRecord::Base
  validates_uniqueness_of :email
end
