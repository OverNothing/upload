class Job < ActiveRecord::Base
  mount_uploader :Joblist, JoblistUploader
  validates :name, presence: true
end
