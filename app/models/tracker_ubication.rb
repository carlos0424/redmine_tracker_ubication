class TrackerUbication < ActiveRecord::Base
    belongs_to :project
    belongs_to :issue
    belongs_to :user
  
    validates :latitude, presence: true
    validates :longitude, presence: true
  end
  