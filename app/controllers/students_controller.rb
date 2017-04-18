class StudentsController < ApplicationController
	before_action :set_student, only: [:show]
	def show
		if @student.blank?
			return api_error('未找到该学生信息！') 
		else
			render json: @student
		end
	end

	private
	def set_student
		@student = Student.find_by(id: params[:id])
	end
end
