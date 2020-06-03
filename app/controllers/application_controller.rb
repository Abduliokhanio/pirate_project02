class ApplicationController < Sinatra::Base
    register Sinatra::ActiveRecordExtension
    set :session_secret, "my_application_secret"
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :'index'
    end 

    get '/register' do 
      erb :'/registrations/signup'
    end 

    post '/registrations' do
      @user = Employee.new(name: params["name"], Username: params["Username"], password: params["password"])
      @user.save
      session[:user_id] = @user.id
      redirect '/employees'
    end



  end