class User < ActiveRecord::Base
  has_many :articles
  validates :name, presence: true,
                   length: { in: 3..40}
end