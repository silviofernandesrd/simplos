class Client < ApplicationRecord
  belongs_to :company
  validates :name, presence: true
end
