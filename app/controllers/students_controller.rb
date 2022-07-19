class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        render json: students.sort_by(&:grade).reverse
    end

    def highest_grade
        student = Student.all
        render json: student.order(grade: :desc).first
    end
end
