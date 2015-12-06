class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  has_many :articles

  validates :name, presence: true,
                   length: { in: 3..40}
  validates :email, presence: true,
                    length: {maximum: 40},
                    uniqueness: {case_sensitive: false},
                    format: {with:  /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
                             message: "not a valid email address"}
end