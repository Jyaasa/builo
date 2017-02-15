ActiveAdmin.register Company do
  permit_params :comany_name, :characteristic, :strengths, :greeting, :prior_explanation,
                :construction_policy, :upon_completion, :after_support_policy

  index do
    column :id
    column :comany_name
    column :characteristic
    column :strengths
    column :greeting
    column :prior_explanation
    column :construction_policy
    column :upon_completion
    column :after_support_policy
  end

  form do |f|
    f.inputs do
      f.input :comany_name
      f.input :characteristic, as: :ckeditor
      f.input :strengths, as: :ckeditor
      f.input :greeting, as: :ckeditor
      f.input :prior_explanation, as: :ckeditor
      f.input :construction_policy, as: :ckeditor
      f.input :upon_completion, as: :ckeditor
      f.input :after_support_policy, as: :ckeditor
    end
    actions
  end

end
