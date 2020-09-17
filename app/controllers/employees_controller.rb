class EmployeesController < ApplicationController
    before_action :set_employee, only: :show

    def index
        @employees = Employee.all
    end

    def show
        
    end

    



        private
    def set_employee
        @employee = Employee.find(params[:id])
    end
    
    def employee_params(*args)
        params.require(:employee).permit(*args)
    end

end
