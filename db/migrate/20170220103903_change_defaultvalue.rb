class ChangeDefaultvalue < ActiveRecord::Migration[5.0]
  def change
    change_column :companies, :construction_schedule_rate, :integer, default: 0
  end
end
