class EmployeesController < ApplicationController

    get '/employees' do 
        erb :'/employees/index'
    end 

    get '/employees/welcome' do
        erb :'/employees/welcome'
    end 
end