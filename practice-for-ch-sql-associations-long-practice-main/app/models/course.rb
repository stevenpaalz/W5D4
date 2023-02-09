class Course < ApplicationRecord

    has_many(
        :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: 'Enrollment'
    )

    has_many :enrolled_students, through: :enrollments, source: :student

    has_one(
         :prerequisite
         primary_key: :prereq_id,
         foreign_key: :id,
         class_name: 'Course'
         
       
         
    )

    belongs_to(
        :course_of_req, 
        primary_key: :prereq_id,
        foreign_key: :id,
        class_name: 'Course',
        # optional: true
    )

    belongs_to(
        :instructor, 
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: 'User'
        
    )


end