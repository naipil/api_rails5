# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string
#  t_number   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Teacher < ApplicationRecord
	has_many :courses
	has_many :students, through: :courses

	validates :name, presence: true
	validates :t_number, uniqueness: true

	def remove
		self.courses.update_all(teacher_id: nil)
		self.destroy			
	end
end
