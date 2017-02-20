ActiveAdmin.register Feedback do
  menu false
  belongs_to :company, :optional => true
  permit_params :feedbacker_image, :feedbacker_details, :title, :description
  actions :all

  index do
    column :feedbacker_image
    column :feedbacker_details
    column :title
    column :description
    actions
  end

  form do |f|
    f.inputs do
      f.input :feedbacker_image
      f.input :feedbacker_details
      f.input :title
      f.input :description
    end
    actions
  end

  show do
    attributes_table do
      row :feedbacker_image
      row :feedbacker_details
      row :title
      row :description
    end
  end
end
