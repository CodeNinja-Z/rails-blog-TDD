class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  has_many :articles

  validates :name, presence: true,
                   length: { in: 3..40}
                   # uniqueness: {case_sensitive: false}
  validates :email, presence: true,
                    length: {maximum: 40},
                    uniqueness: {case_sensitive: false},
                    format: {with:  /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
                             message: "not a valid email address"}
  
  validates :password, presence: true,
                       length: {in: 3..16},
                       confirmation: true
  # Two following lines are equivalent to the block above:
  # validates :password, confirmation: true
  # validates :password_confirmation, presence: true
end