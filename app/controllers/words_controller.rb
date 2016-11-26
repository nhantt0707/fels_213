class WordsController < ApplicationController
  def index
    @words = Word.include(:answers).recent.pagninate page: params[:page]
  end
end
