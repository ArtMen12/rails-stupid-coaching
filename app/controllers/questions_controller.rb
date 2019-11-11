class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @asking = params[:question]
      if @asking == 'I am going to work'
        @answer = 'Great'
      elsif @asking.slice(-1, 1) == '?'
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
  end
end
