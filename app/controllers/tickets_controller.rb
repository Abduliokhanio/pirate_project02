class TicketsController < ApplicationController

    get '/tickets' do 
        erb :'/tickets/index'
    end 

end