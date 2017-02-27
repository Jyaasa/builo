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
                :building, :mansion, :small_scale, :medium_scale, :large_scale,
                :reputation_rate, :consult_rate, :after_sales_support_rate,
                :estimate_understand_rate, :construction_schedule_rate,
                :quality_construction_satisfactory_rate, :residents_care_rate,
                :construction_report_understand_rate, :greeting_residents_concern_adequate_rate,
                :estimate_create, :description_of_contract, :guarantee_of_description,
                :proposed_force, :neighborhood_greeting, :greeting_the_home,
                :corresponding_night_weekend, :emergency_response, :split_payment,
                :inquiry_member_name1, :inquiry_member_name2, :business_area_image,
                :property_scale_image, :construction_amount_image,
                :correspondence_trouble_appropriate_n_a_rate

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
    column :banner do |company|
      image_tag(company.banner.url(:logo)) if company.banner.present?
    end
    column :logo do |company|
      image_tag(company.logo.url(:logo)) if company.logo.present?
    end
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
    column :inquiry_member_image1 do |company|
      image_tag(company.inquiry_member_image1.url(:logo)) \
      if company.inquiry_member_image1.present?
    end
    column :inquiry_member_image2 do |company|
      image_tag(company.inquiry_member_image2.url(:logo)) \
      if company.inquiry_member_image2.present?
    end
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
    column :performance_image1 do |company|
      image_tag(company.performance_image1.url(:logo)) \
      if company.performance_image1.present?
    end
    column :performance_image2 do |company|
      image_tag(company.performance_image2.url(:logo)) \
      if company.performance_image2.present?
    end
    column :performance_image3 do |company|
      image_tag(company.performance_image3.url(:logo)) \
      if company.performance_image3.present?
    end
    column :performance_image4 do |company|
      image_tag(company.performance_image4.url(:logo)) \
      if company.performance_image4.present?
    end
    column :performance_image5 do |company|
      image_tag(company.performance_image5.url(:logo)) \
      if company.performance_image5.present?
    end
    column :performance_image6 do |company|
      image_tag(company.performance_image6.url(:logo)) \
      if company.performance_image6.present?
    end
    column :reputation_rate
    column :consult_rate
    column :after_sales_support_rate
    column :estimate_understand_rate
    column :construction_schedule_rate
    column :greeting_residents_concern_adequate_rate
    column :quality_construction_satisfactory_rate
    column :correspondence_trouble_appropriate_n_a_rate
    column :construction_report_understand_rate
    column :estimate_create
    column :description_of_contract
    column :guarantee_of_description
    column :proposed_force
    column :neighborhood_greeting
    column :greeting_the_home
    column :corresponding_night_weekend
    column :emergency_response
    column :split_payment
    column :inquiry_member_name1
    column :inquiry_member_name2
    column :business_area_image do |company|
      image_tag(company.business_area_image.url(:logo)) \
      if company.business_area_image.present?
    end
    column :property_scale_image do |company|
      image_tag(company.property_scale_image.url(:logo)) \
      if company.property_scale_image.present?
    end
    column :construction_amount_image do |company|
      image_tag(company.construction_amount_image.url(:logo)) \
      if company.construction_amount_image.present?
    end
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
      f.input :banner, as: :file, hint: f.object.banner.present? \
        ? image_tag(f.object.banner.url(:logo)) : nil
      f.input :logo, as: :file, hint: f.object.logo.present? \
        ? image_tag(f.object.logo.url(:logo)) : nil
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
      f.input :inquiry_member_image1, hint: f.object.inquiry_member_image1.present? \
        ? image_tag(f.object.inquiry_member_image1.url(:logo)) : nil
      f.input :inquiry_member_image2, as: :file, hint: f.object.inquiry_member_image2.present? \
        ? image_tag(f.object.inquiry_member_image2.url(:logo)) : nil
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
      f.input :performance_image1, as: :file, hint: f.object.performance_image1.present? \
        ? image_tag(f.object.performance_image1.url(:logo)) : nil
      f.input :performance_image2, as: :file, hint: f.object.performance_image2.present? \
        ? image_tag(f.object.performance_image2.url(:logo)) : nil
      f.input :performance_image3, as: :file, hint: f.object.performance_image3.present? \
        ? image_tag(f.object.performance_image3.url(:logo)) : nil
      f.input :performance_image4, as: :file, hint: f.object.performance_image4.present? \
        ? image_tag(f.object.performance_image4.url(:logo)) : nil
      f.input :performance_image5, as: :file, hint: f.object.performance_image5.present? \
        ? image_tag(f.object.performance_image5.url(:logo)) : nil
      f.input :performance_image6, as: :file, hint: f.object.performance_image6.present? \
        ? image_tag(f.object.performance_image6.url(:logo)) : nil
      f.input :reputation_rate
      f.input :consult_rate
      f.input :after_sales_support_rate
      f.input :estimate_understand_rate
      f.input :construction_schedule_rate
      f.input :greeting_residents_concern_adequate_rate
      f.input :quality_construction_satisfactory_rate
      f.input :correspondence_trouble_appropriate_n_a_rate
      f.input :construction_report_understand_rate
      f.input :estimate_create
      f.input :description_of_contract
      f.input :guarantee_of_description
      f.input :proposed_force
      f.input :neighborhood_greeting
      f.input :greeting_the_home
      f.input :corresponding_night_weekend
      f.input :emergency_response
      f.input :split_payment
      f.input :inquiry_member_name1
      f.input :inquiry_member_name2
      f.input :business_area_image, as: :file, hint: f.object.business_area_image.present? \
        ? image_tag(f.object.business_area_image.url(:logo)) : nil
      f.input :property_scale_image, as: :file, hint: f.object.property_scale_image.present? \
        ? image_tag(f.object.property_scale_image.url(:logo)) : nil
      f.input :construction_amount_image, as: :file, hint: f.object.construction_amount_image.present? \
        ? image_tag(f.object.construction_amount_image.url(:logo)) : nil
    end
    actions
  end

  show do
    attributes_table do
      row 'Actions' do
        render 'feedback_actions'
      end
      row :name
      row :characteristic
      row :strengths
      row :greeting
      row :prior_explanation
      row :construction_policy
      row :upon_completion
      row :after_support_policy
      row :banner do |company|
        image_tag(company.banner.url(:logo)) \
        if company.banner.present?
      end
      row :logo do |company|
        image_tag(company.logo.url(:logo)) \
        if company.logo.present?
      end
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
      row :inquiry_member_image1 do |company|
        image_tag(company.inquiry_member_image1.url(:logo)) \
        if company.inquiry_member_image1.present?
      end
      row :inquiry_member_image2 do |company|
        image_tag(company.inquiry_member_image2.url(:logo)) \
        if company.inquiry_member_image2.present?
      end
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
      row :performance_image1 do |company|
        image_tag(company.performance_image1.url(:logo)) \
        if company.performance_image1.present?
      end
      row :performance_image2 do |company|
        image_tag(company.performance_image2.url(:logo)) \
        if company.performance_image2.present?
      end
      row :performance_image3 do |company|
        image_tag(company.performance_image3.url(:logo)) \
        if company.performance_image3.present?
      end
      row :performance_image4 do |company|
        image_tag(company.performance_image4.url(:logo)) \
        if company.performance_image4.present?
      end
      row :performance_image5 do |company|
        image_tag(company.performance_image5.url(:logo)) \
        if company.performance_image5.present?
      end
      row :performance_image6 do |company|
        image_tag(company.performance_image6.url(:logo)) \
        if company.performance_image6.present?
      end
      row :reputation_rate
      row :consult_rate
      row :after_sales_support_rate
      row :estimate_understand_rate
      row :construction_schedule_rate
      row :greeting_residents_concern_adequate_rate
      row :quality_construction_satisfactory_rate
      row :correspondence_trouble_appropriate_n_a_rate
      row :construction_report_understand_rate
      row :estimate_create
      row :description_of_contract
      row :guarantee_of_description
      row :proposed_force
      row :neighborhood_greeting
      row :greeting_the_home
      row :corresponding_night_weekend
      row :emergency_response
      row :split_payment
      row :inquiry_member_name1
      row :inquiry_member_name2
      row :business_area_image do |company|
        image_tag(company.business_area_image.url(:logo)) \
        if company.business_area_image.present?
      end
      row :property_scale_image do |company|
        image_tag(company.property_scale_image.url(:logo)) \
        if company.property_scale_image.present?
      end
      row :construction_amount_image do |company|
        image_tag(company.construction_amount_image.url(:logo)) \
        if company.construction_amount_image.present?
      end
    end
  end
end
