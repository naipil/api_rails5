class StudentsController < ApplicationController
	before_action :set_student, only: [:show, :choose_course]
	before_action :set_course, only: [:choose_course]
	def show
		if @student.blank?
			return api_error('未找到该学生信息！') 
		else
			render json: @student
		end
	end

	def choose_course
		status, text = @student.choose_course(@course)
		status ? api_success(text) : api_error(text) 
	end

	private
	def set_student
		@student = Student.find_by(id: params[:id])
	end

	def set_course
		@course = Course.find_by(id: params[:course_id])
	end
end
