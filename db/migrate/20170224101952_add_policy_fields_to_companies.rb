class AddPolicyFieldsToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :estimate_create, :string
    add_column :companies, :description_of_contract, :string
    add_column :companies, :guarantee_of_description, :string
    add_column :companies, :proposed_force, :boolean, default: false
    add_column :companies, :neighborhood_greeting, :boolean, default: false
    add_column :companies, :greeting_the_home, :boolean, default: false
    add_column :companies, :corresponding_night_weekend, :boolean, default: false
    add_column :companies, :emergency_response, :boolean, default: false
    add_column :companies, :split_payment, :boolean, default: false
    add_column :companies, :inquiry_member_name1, :string
    add_column :companies, :inquiry_member_name2, :string
    add_column :companies, :business_area_image, :string
    add_column :companies, :property_scale_image, :string
    add_column :companies, :construction_amount_image, :string
    add_column :companies, :correspondence_trouble_appropriate_n_a_rate, :integer, default: 0
  end
end
