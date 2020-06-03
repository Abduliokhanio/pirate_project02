class EmployeesController < ApplicationController

    get '/employees' do 
        erb :'/employees/index'
    end 
end