class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :t_number

  has_many :courses
end
