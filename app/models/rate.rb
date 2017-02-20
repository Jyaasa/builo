# == Schema Information
#
# Table name: rates
#
#  id            :integer          not null, primary key
#  rater_id      :integer
#  rateable_type :string
#  rateable_id   :integer
#  stars         :float            not null
#  dimension     :string
#  created_at    :datetime
#  updated_at    :datetime
#

class Rate < ActiveRecord::Base
  belongs_to :rater, :class_name => "Company"
  belongs_to :rateable, :polymorphic => true

  #attr_accessible :rate, :dimension

end
