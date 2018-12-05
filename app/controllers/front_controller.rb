class FrontController < ApplicationController
    def index
        @clubs = Club.all
        @club_random = Club.all.sample(4)
        @group_random = SmallGroup.all.sample(6)
        
        @group = SmallGroup.all
    end
    
    def try
        
    end
end