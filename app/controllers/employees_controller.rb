class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def show        
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to employee_path(@employee)
    end

    def new 
        @employee = Employee.new 
    end

    def edit 
    end

    def update 
        # @employee = Employee.update(employee_params(:first_name, :last_name, :alias, :title, :office))
        # employee = set_employee
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end

        private
    def set_employee
        @employee = Employee.find(params[:id])
    end
    
    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office)
    end

end
