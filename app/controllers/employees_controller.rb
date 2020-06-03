class EmployeesController < ApplicationController
    get '/' do 
        erb :'index'
    end 
end