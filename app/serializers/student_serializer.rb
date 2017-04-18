class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :s_number

	has_many :courses
end
