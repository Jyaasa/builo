class AddScaleFieldsToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :building, :boolean, default: false
    add_column :companies, :mansion, :boolean, default: false
    add_column :companies, :small_scale, :boolean, default: false
    add_column :companies, :medium_scale, :boolean, default: false
    add_column :companies, :large_scale, :boolean, default: false
  end
end
