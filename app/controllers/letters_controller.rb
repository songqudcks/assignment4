class LettersController < ApplicationController
    @@t = Time.now
    def index
        text = params[:text]
        @letter = Letter.new
        @letter.save
        
        @letters = Letter.all
    end
    
    def show
        text = params[:text]
        @letter = Letter.new
        @letter.text = @@t.strftime("%Y/%m/%d %H:%M ") + text
        @letter.save
        
        @letters = Letter.all
    end
end
