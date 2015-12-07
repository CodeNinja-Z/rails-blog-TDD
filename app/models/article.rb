class Article < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true,
                    length: {minimum: 2, maximum: 80}
  validates :content, presence: true,
                      length: {minimum: 1, maximum: 3600}
end
