class StatusCheck < ApplicationRecord
  belongs_to :service
  validates :name, presence: true, allow_blank: false
  validates :selector, presence: true, allow_blank: false
  validates :expected_value, presence: true
end
