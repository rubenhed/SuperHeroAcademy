class AddSyllabusToCourse < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :syllabus, :text
  end
end
