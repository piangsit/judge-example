class User < ActiveRecord::Base
  validates :name, uniqueness: { allow_blank: true }, presence: true

  EMAIL_REGEX  = /^\s*(([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,}))$/i

  validates :email, presence: true
  validates :email, uniqueness: { allow_blank: true }
  validates :email, format: {
    with:         EMAIL_REGEX,
    allow_blank:  true,
    multiline:    true
  }

  validates :password, presence: true
  validates :password, confirmation: true
  validates :password, length: {
    within: 8..128,
    allow_blank:  true
  }
end
