# == Schema Information
#
# Table name: companies
#
#  id                   :integer          not null, primary key
#  name                 :string
#  characteristic       :text
#  strengths            :text
#  greeting             :text
#  prior_explanation    :text
#  construction_policy  :text
#  upon_completion      :text
#  after_support_policy :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Company < ApplicationRecord
  validates_presence_of :name, :characteristic, :strengths, :greeting,
                        :prior_explanation, :construction_policy,
                        :upon_completion, :after_support_policy
end
