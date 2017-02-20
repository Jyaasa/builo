class AddedRateFieldsToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :reputation_rate, :integer, default: 0
    add_column :companies, :consult_rate, :integer, default: 0
    add_column :companies, :after_sales_support_rate, :integer, default: 0
    add_column :companies, :estimate_understand_rate, :integer, default: 0
    add_column :companies, :construction_schedule_rate, :integer
    add_column :companies, :greeting_residents_concern_adequate_rate, :integer, default: 0
    add_column :companies, :quality_construction_satisfactory_rate, :integer, default: 0
    add_column :companies, :construction_report_understand_rate, :integer, default: 0
  end
end
