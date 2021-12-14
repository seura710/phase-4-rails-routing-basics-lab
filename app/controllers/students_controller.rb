class StudentsController < ApplicationController
    def index 
        students=Student.all
        render json:students
    end

    def grades
        grades=Students.all

        render json: grades
    end
end