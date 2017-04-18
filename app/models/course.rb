# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string
#  c_number   :string
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_courses_on_teacher_id  (teacher_id)
#

class Course < ApplicationRecord
	has_many :select_courses, dependent: :destroy
	has_many :students, through: :select_courses

	belongs_to :teacher

	validates :name, presence: true
	validates :c_number, uniqueness: true
end
