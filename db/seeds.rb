# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teachers = Teacher.create([{name: "张三", t_number: "TC000001"},
													{name: "李四", t_number: "TC000002"},
													{name:"王五", t_number: "TC000003"}])
courses = Course.create([{name: "高等数学", c_number: "CS000001", teacher_id: teachers.first.id}, 
												 {name: "线性代数", c_number: "CS000002", teacher_id: teachers.last.id},
												 {name: "信息安全", c_number: "CS000003", teacher_id: teachers.last.id} ])
students = Student.create([{name: "赵钱", s_number: "ST000001"},
														{name: "孙李", s_number: "ST000002"},
														{name:"周吴", s_number: "ST000003"}])
SelectCourse.create([{student_id: students.first.id, course_id: courses.first.id}, 
											{student_id: students.second.id, course_id: courses.last.id},
											{student_id: students.first.id, course_id: courses.second.id},])