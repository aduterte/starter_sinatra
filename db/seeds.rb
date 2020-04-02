Teacher.destroy_all
Cohort.destroy_all
Student.destroy_all

student1 = Student.create(name: "Alex", img_url: "https://uploads-learn.s3.amazonaws.com/uploads/identities/learn_account/avatar/4aeafd35-23eb-4ae5-96ff-d0ec7efe773d/avatar.jpeg" )
student2 = Student.create(name: "Uzo", img_url: "https://uploads-learn.s3.amazonaws.com/uploads/identities/learn_account/avatar/e1249026-1e5c-4818-909b-d43297a41ce7/avatar.jpeg" )
student3 = Student.create(name: "Junior", img_url: "https://sm.imgix.net/20/04/neymar.jpg" )
student4 = Student.create(name: "Mary", img_url: "https://avatars.githubusercontent.com/u/60671607" )
student5 = Student.create(name: "Richard", img_url: "https://uploads-learn.s3.amazonaws.com/uploads/identities/learn_account/avatar/bd3b2fe2-9470-441d-aee4-f8c3c19fbb66/avatar.jpeg" )
student6 = Student.create(name: "Dawit")
student7 = Student.create(name: "T")
student8 = Student.create(name: "Lindsay")
student9 = Student.create(name: "Sebastian")
student10 = Student.create(name: "Deijah")
student11 = Student.create(name: "Danny", img_url: "https://uploads-learn.s3.amazonaws.com/uploads/identities/learn_account/avatar/4f515909-6deb-468f-855e-02e7f82ba348/avatar.jpeg" )
student12 = Student.create(name: "Yari")
student13 = Student.create(name: "Carla")
student14 = Student.create(name: "Beza", img_url: "https://avatars.githubusercontent.com/u/47042669" )
student15 = Student.create(name: "Bret", img_url: "https://uploads-learn.s3.amazonaws.com/uploads/identities/learn_account/avatar/c3b1f975-bdc8-4d7b-9a04-4ae028eacc5f/avatar.jpeg" )

teacher1 = Teacher.create(name: "Paul", subject: "Math")
teacher2 = Teacher.create(name: "Shannon", subject: "Meditation")
teacher3 = Teacher.create(name: "Jenny", subject: "Science")
teacher8 = Teacher.create(name:"Doug", subject: "Reading")
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