class RenameFieldNameOfCompany < ActiveRecord::Migration[5.0]
  def change
    rename_column :companies, :comany_name, :name
  end
end
