class Mission < ApplicationRecord
  belongs_to :user
  enum status: [:to_do, :pending, :done]
end
