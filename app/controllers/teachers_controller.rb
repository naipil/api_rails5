class TeachersController < ApplicationController
	before_action :set_teacher, only: [:destroy]

	def index
		@teachers = Teacher.includes(:courses)
		if @teachers.blank?
			return api_error('暂无教师信息！') 
		else
			render json: @teachers
		end
	end

	def destroy
		if @teacher.blank?
			return api_error('未找到该教师信息！')
		else
			if @teacher.remove
      	return api_success('删除成功！')
    	else
      	return api_error('删除失败！')
    	end
		end
	end

	private

	def set_teacher
		@teacher = Teacher.find_by(id: params[:id])
	end
end
