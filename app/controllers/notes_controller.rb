class NotesController < ApplicationController
  def top
    @sentences = Sentence.all
    @genres = Genre.all
  end
end
