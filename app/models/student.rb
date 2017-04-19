# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  s_number   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ApplicationRecord
	has_many :select_courses, dependent: :destroy
	has_many :courses, through: :select_courses
	has_many :teachers, through: :courses

	validates :name, presence: true
	validates :s_number, uniqueness: true

	def choose_course course
		course_ids = self.courses.map(&:id)
		if course.blank?
			status, text = false, "未找到该课程"
		elsif course_ids.include?(course.id)
			status, text = false, "已经选过该课程"
		elsif course.students.count >= 50
			status, text = false, "该课程已满"
		else
			@select = SelectCourse.new(course_id: course.id, student_id: self.id)
			if @select.save
				 status, text = true, "选课成功"
			else
				status, text = false, "选课失败"
			end
		end 

		return status, text
	end
end
