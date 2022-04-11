class AskController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask].capitalize
      if @ask == 'I am going to lockdown?'
        @answer = 'No!'
      elsif @ask[-1] == '?'
        @answer = 'You can not going out, keep lockdown'
      else
        @answer = 'Keep lockdown and do your next challenge!'
      end
  end
end
