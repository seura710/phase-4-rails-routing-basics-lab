class StudentsController < ApplicationController
    def index 
        students=Student.all
        render json:students
    end

    def grades
        grades=Student.order(grade: :desc)
        render json: grades
    end
    # Students GET /students/grades returns an array of all students ordered by grade

    def highest_grades
        grades=Student.order(grade: :desc).first
        render json: grades
    end 
end