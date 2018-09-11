class UserBook < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum status: ['read', 'currently reading', 'want to read']
end
