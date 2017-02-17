ActiveAdmin.register Company do
  permit_params :name, :characteristic, :strengths, :greeting, :prior_explanation,
                :construction_policy, :upon_completion, :after_support_policy,
                :banner, :logo, :category_1, :category_2, :category_3, :category_4,
                :business_areaes, :business_day_no, :inquiry_member_image1,
                :inquiry_member_image2, :url, :address, :telephone, :president,
                :about_president, :main_business, :employees, :eligibility, :ei_industry_are,
                :capital_series, :permit, :member_organizations, :major_customers,
                :performance_content1, :performance_content2, :performance_content3,
                :performance_content4, :performance_content5, :performance_content6,
                :performance_image1, :performance_image2, :performance_image3,
                :performance_image4, :performance_image5, :performance_image6,
                :building, :mansion, :small_scale, :medium_scale, :large_scale

  actions :all

  index do
    column :id
    column :name
    column :characteristic
    column :strengths
    column :greeting
    column :prior_explanation
    column :construction_policy
    column :upon_completion
    column :after_support_policy
    column :banner
    column :logo
    column :category_1
    column :category_2
    column :category_3
    column :category_4
    column :building
    column :mansion
    column :small_scale
    column :medium_scale
    column :large_scale
    column :business_areaes
    column :business_day_no
    column :inquiry_member_image1
    column :inquiry_member_image2
    column :url
    column :address
    column :telephone
    column :president
    column :about_president
    column :main_business
    column :employees
    column :eligibility
    column :ei_industry_are
    column :capital_series
    column :permit
    column :member_organizations
    column :major_customers
    column :performance_content1
    column :performance_content2
    column :performance_content3
    column :performance_content4
    column :performance_content5
    column :performance_content6
    column :performance_image1
    column :performance_image2
    column :performance_image3
    column :performance_image4
    column :performance_image5
    column :performance_image6
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :characteristic, as: :ckeditor
      f.input :strengths, as: :ckeditor
      f.input :greeting, as: :ckeditor
      f.input :prior_explanation, as: :ckeditor
      f.input :construction_policy, as: :ckeditor
      f.input :upon_completion, as: :ckeditor
      f.input :after_support_policy, as: :ckeditor
      f.input :banner, as: :file
      f.input :logo, as: :file
      f.input :category_1
      f.input :category_2
      f.input :category_3
      f.input :category_4
      f.input :building
      f.input :mansion
      f.input :small_scale
      f.input :medium_scale
      f.input :large_scale
      f.input :business_areaes, as: :ckeditor
      f.input :business_day_no
      f.input :inquiry_member_image1, as: :file
      f.input :inquiry_member_image2, as: :file
      f.input :url
      f.input :address
      f.input :telephone
      f.input :president
      f.input :about_president, as: :ckeditor
      f.input :main_business
      f.input :employees
      f.input :eligibility, as: :ckeditor
      f.input :ei_industry_are
      f.input :capital_series
      f.input :permit
      f.input :member_organizations
      f.input :major_customers
      f.input :performance_content1, as: :ckeditor
      f.input :performance_content2, as: :ckeditor
      f.input :performance_content3, as: :ckeditor
      f.input :performance_content4, as: :ckeditor
      f.input :performance_content5, as: :ckeditor
      f.input :performance_content6, as: :ckeditor
      f.input :performance_image1, as: :file
      f.input :performance_image2, as: :file
      f.input :performance_image3, as: :file
      f.input :performance_image4, as: :file
      f.input :performance_image5, as: :file
      f.input :performance_image6, as: :file
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :characteristic
      row :strengths
      row :greeting
      row :prior_explanation
      row :construction_policy
      row :upon_completion
      row :after_support_policy
      row :banner
      row :logo
      row :category_1
      row :category_2
      row :category_3
      row :category_4
      row :building
      row :mansion
      row :small_scale
      row :medium_scale
      row :large_scale
      row :business_areaes
      row :business_day_no
      row :inquiry_member_image1
      row :inquiry_member_image2
      row :url
      row :address
      row :telephone
      row :president
      row :about_president
      row :main_business
      row :employees
      row :eligibility
      row :ei_industry_are
      row :capital_series
      row :permit
      row :member_organizations
      row :major_customers
      row :performance_content1
      row :performance_content2
      row :performance_content3
      row :performance_content4
      row :performance_content5
      row :performance_content6
      row :performance_image1
      row :performance_image2
      row :performance_image3
      row :performance_image4
      row :performance_image5
      row :performance_image6
    end
  end
end
