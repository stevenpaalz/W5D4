class Course < ApplicationRecord

    has_many(
        :enrollment,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: 'Enrollment'
    )

    # belongs_to(
    #     :instructor,
    #     primary_key: id,
        
    # )

end