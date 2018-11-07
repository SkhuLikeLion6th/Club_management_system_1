class FrontController < ApplicationController
    def index
        @clubs = Club.all
    end
    
    def try
        
    end
end