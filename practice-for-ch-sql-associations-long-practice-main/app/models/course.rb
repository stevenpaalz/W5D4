class Course < ApplicationRecord

    has_many(
        :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: 'Enrollment'
    )

    has_many :enrolled_students, through: :enrollments, source: :student

    # belongs_to(
    #     :instructor,
    #     primary_key: id,
        
    # )

end