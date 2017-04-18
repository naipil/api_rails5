class CreateSelectCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :select_courses do |t|
      t.integer :student_id
      t.integer :course_id
    end

    add_index :select_courses, :student_id
    add_index :select_courses, :course_id
  end
end
