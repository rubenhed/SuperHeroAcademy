class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.integer :level
      t.integer :price
      t.string :location
      t.boolean :online
      t.datetime :start_time
      t.references :user, foreign_key: true # this is imp

      t.timestamps
    end
  end
end
