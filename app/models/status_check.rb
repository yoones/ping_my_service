class StatusCheck < ApplicationRecord
  belongs_to :service
  has_many :status_check_histories
  validates :name, presence: true, allow_blank: false
  validates :selector, presence: true, allow_blank: false
  validates :expected_value, presence: true
end
