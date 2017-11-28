class Service < ApplicationRecord
  has_many :status_checks, dependent: :destroy
  validates :name, presence: true, allow_blank: false, uniqueness: true
  validates :url, presence: true, allow_blank: false
  validate :valid_url

  private

  def valid_url
    # todo: try to open url. add error on failure
  end
end
