# == Schema Information
#
# Table name: rating_caches
#
#  id             :integer          not null, primary key
#  cacheable_type :string
#  cacheable_id   :integer
#  avg            :float            not null
#  qty            :integer          not null
#  dimension      :string
#  created_at     :datetime
#  updated_at     :datetime
#

class RatingCache < ActiveRecord::Base
  belongs_to :cacheable, :polymorphic => true
end
