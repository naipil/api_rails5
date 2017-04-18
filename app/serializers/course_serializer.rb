class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :c_number
	attribute :teacher_name, if: :can_get_teacher?
	attribute :teacher_number, if: :can_get_teacher?

	has_many :students
	belongs_to :teacher

	def can_get_teacher?
		true unless instance_options[:serializer_context_class] ==  TeacherSerializer
  end

  def teacher_name
  	teacher = object.teacher
		teacher_name = teacher.blank? ? "" : teacher.name 
  end

  def teacher_number
  	teacher = object.teacher
		teacher_number = teacher.blank? ? "" : teacher.t_number
  end
	
	
end
