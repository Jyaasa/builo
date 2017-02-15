class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :comany_name
      t.text :characteristic
      t.text :strengths
      t.text :greeting
      t.text :prior_explanation
      t.text :construction_policy
      t.text :upon_completion
      t.text :after_support_policy

      t.timestamps
    end
  end
end
