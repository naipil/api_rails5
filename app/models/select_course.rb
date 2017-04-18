# == Schema Information
#
# Table name: select_courses
#
#  id         :integer          not null, primary key
#  student_id :integer
#  course_id  :integer
#
# Indexes
#
#  index_select_courses_on_course_id   (course_id)
#  index_select_courses_on_student_id  (student_id)
#

class SelectCourse < ApplicationRecord
	belongs_to :student
	belongs_to :course
end
