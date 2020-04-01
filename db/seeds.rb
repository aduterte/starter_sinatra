Teacher.destroy_all
Cohort.destroy_all
Student.destroy_all

student1 = Student.create(name: "Alex")
student2 = Student.create(name: "Uzo")
student3 = Student.create(name: "Junior")
student4 = Student.create(name: "Mary")
student5 = Student.create(name: "Richard")
student6 = Student.create(name: "Dawit")
student7 = Student.create(name: "T")
student8 = Student.create(name: "Lindsay")
student9 = Student.create(name: "Sebastian")
student10 = Student.create(name: "Deijah")
student11 = Student.create(name: "Danny")
student12 = Student.create(name: "Yari")
student13 = Student.create(name: "Carla")
student14 = Student.create(name: "Beza")
student15 = Student.create(name: "Bret")

teacher1 = Teacher.create(name: "Paul", subject: "Math")
teacher2 = Teacher.create(name: "Shannon", subject: "Reading")
teacher3 = Teacher.create(name: "Jenny", subject: "Science")
teacher8 = Teacher.create(name:"Doug", subject: "Meditation")
teacher9 = Teacher.create(name:"Chine", subject: "Coding")
teacher10 = Teacher.create(name:"Ann", subject: "Social Studies")

cohort1 = Cohort.create(student_id: student1.id,  teacher_id: teacher1.id)
cohort2 = Cohort.create(student_id: student2.id, teacher_id: teacher2.id)
cohort3 = Cohort.create(student_id: student3.id, teacher_id: teacher3.id)
cohort4 = Cohort.create(student_id: student4.id, teacher_id: teacher8.id)
cohort5 = Cohort.create(student_id: student5.id, teacher_id: teacher9.id)
cohort6 = Cohort.create(student_id: student6.id, teacher_id: teacher8.id)
cohort7 = Cohort.create(student_id: student7.id, teacher_id: teacher1.id)
cohort8 = Cohort.create(student_id: student8.id, teacher_id: teacher8.id)
cohort9 = Cohort.create(student_id: student9.id, teacher_id: teacher9.id)
cohort10 = Cohort.create(student_id: student10.id, teacher_id: teacher10.id)
cohort11 = Cohort.create(student_id: student2.id, teacher_id: teacher10.id)

# binding.pry