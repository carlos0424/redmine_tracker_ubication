class TrackerUbication < ActiveRecord::Base
  belongs_to :issue
  belongs_to :user

  validates :latitude, :longitude, presence: true

  # Campos extra para identificar eventos
  validates :notes, length: { maximum: 500 }, allow_blank: true
  validates :notes, allow_blank: true

  scope :by_issue, ->(issue_id) { where(issue_id: issue_id) }
  scope :recent, -> { order(created_at: :desc) }
end
