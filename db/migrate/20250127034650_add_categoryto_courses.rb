class AddCategorytoCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :category, :integer, default: 0, null: false
  end
end
