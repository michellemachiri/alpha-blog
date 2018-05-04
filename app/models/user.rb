class User < ApplicationRecord
  has_many :articles
  #will save email in db level as lowercase
  before_save{ self.email = email.downcase }
# chack for validation helpers at active record validatons.
#
VALID_EMAIL_REGEX= /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/i
validates :username, presence: true, uniqueness: {case_sensitive:false},
          length: {minimum: 3, maximu: 25}
validates :email, presence: true , length: {maximum:105}, uniqueness: {case_sensitive:false},
          format: { with: VALID_EMAIL_REGEX }

  has_secure_password


end