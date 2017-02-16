# == Schema Information
#
# Table name: companies
#
#  id                    :integer          not null, primary key
#  name                  :string
#  characteristic        :text
#  strengths             :text
#  greeting              :text
#  prior_explanation     :text
#  construction_policy   :text
#  upon_completion       :text
#  after_support_policy  :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  banner                :string
#  logo                  :string
#  category_1            :string
#  category_2            :string
#  category_3            :string
#  category_4            :string
#  business_areaes       :text
#  business_day_no       :integer
#  inquiry_member_image1 :string
#  inquiry_member_image2 :string
#  url                   :string
#  address               :string
#  telephone             :string
#  president             :string
#  about_president       :string
#  main_business         :string
#  employees             :string
#  eligibility           :text
#  ei_industry_are       :string
#  capital_series        :string
#  permit                :string
#  member_organizations  :string
#  major_customers       :string
#  performance_content1  :string
#  performance_content2  :string
#  performance_content3  :string
#  performance_content4  :string
#  performance_content5  :string
#  performance_content6  :string
#  performance_image1    :string
#  performance_image2    :string
#  performance_image3    :string
#  performance_image4    :string
#  performance_image5    :string
#  performance_image6    :string
#

class Company < ApplicationRecord
  validates_presence_of :name, :characteristic, :strengths, :greeting,
                        :prior_explanation, :construction_policy,
                        :upon_completion, :after_support_policy

  mount_uploader :banner, ImageUploader
  mount_uploader :logo, ImageUploader
  mount_uploader :inquiry_member_image1, ImageUploader
  mount_uploader :inquiry_member_image2, ImageUploader
  mount_uploader :performance_image1, ImageUploader
  mount_uploader :performance_image2, ImageUploader
  mount_uploader :performance_image3, ImageUploader
  mount_uploader :performance_image4, ImageUploader
  mount_uploader :performance_image5, ImageUploader
  mount_uploader :performance_image6, ImageUploader

  def company_logo
    logo.present? ? logo.url(:logo) : 'company-logo.png'
  end

  def company_banner
    banner.present? ? banner.url(:banner) : 'top-detail-img.png'
  end

  def company_inquiry_member_image1
    inquiry_member_image1.present? ? inquiry_member_image1.url(:inquiry_member) : 'contact-img.png'
  end

  def company_inquiry_member_image2
    inquiry_member_image2.present? ? inquiry_member_image2.url(:inquiry_member) : 'contact-img1.png'
  end

  def company_performance_image1
    performance_image1.present? ? performance_image1.url(:performance_image) : 'building.png'
  end

  def company_performance_image2
    performance_image2.present? ? performance_image2.url(:performance_image) : 'building-img2.png'
  end

  def company_performance_image3
    performance_image3.present? ? performance_image3.url(:performance_image) : 'building-img3.png'
  end

  def company_performance_image4
    performance_image4.present? ? performance_image4.url(:performance_image) : 'building-img4.png'
  end

  def company_performance_image5
    performance_image5.present? ? performance_image5.url(:performance_image) : 'building-img5.png'
  end

  def company_performance_image6
    performance_image6.present? ? performance_image6.url(:performance_image) : 'building-img6.png'
  end
end