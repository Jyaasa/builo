# == Schema Information
#
# Table name: feedbacks
#
#  id                 :integer          not null, primary key
#  company_id         :integer
#  feedbacker_image   :string
#  feedbacker_details :string
#  title              :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Feedback < ApplicationRecord
  belongs_to :company
  validates_presence_of :feedbacker_image, :feedbacker_details, :description
  mount_uploader :feedbacker_image, ImageUploader
end
