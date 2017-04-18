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

	validates :name, presence: true
	validates :s_number, uniqueness: true
end
