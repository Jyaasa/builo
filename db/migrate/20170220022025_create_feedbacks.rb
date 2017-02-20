class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.belongs_to :company
      t.string :feedbacker_image
      t.string :feedbacker_details
      t.string :title
      t.text :description

      t.timestamps
    end
    add_foreign_key :feedbacks, :companies, column: :company_id
  end
end
