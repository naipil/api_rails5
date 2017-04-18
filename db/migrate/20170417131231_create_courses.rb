class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :c_number
      t.integer :teacher_id

      t.timestamps
    end

    add_index :courses, :teacher_id
  end
end
