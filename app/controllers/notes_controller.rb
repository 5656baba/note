class NotesController < ApplicationController
  def top
    @sentences = Sentence.all
  end
end
