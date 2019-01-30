class StudentsController < ApplicationController
    #CRUD
    #send back form to create
    def new
        @courses = Course.all
    end
    # create student
    def create
        student = Student.new
        student.first_name = params[:first_name]
        student.last_name = params[:last_name]
        student.picture = params[:picture]
        student.course_id = params[:course_id]
        student.save
        redirect_to '/students'
    end
    #list all students
    def index
        @students = Student.all
    end
    #send back form to edit
    def edit
        @student = Student.find(params[:id])
        @courses = Course.all
    end
    #updates student
    def update
        student = Student.find(params[:id])
        student.first_name = params[:first_name]
        student.last_name = params[:last_name]
        student.picture = params[:picture]
        student.course_id = params[:course_id]
        student.save
        redirect_to '/students'
    end
    #destroy
    def delete
        student = Student.find(params[:id])
        student.destroy
        redirect_to '/students'
    end
end
