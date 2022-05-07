class SentencesController < ApplicationController
  def new
    @sentence = Sentence.new
  end

  def show
    @sentence = Sentence.find(params[:id])
  end

  def edit
    @sentence = Sentence.find(params[:id])
  end

  def create
    @sentence = Sentence.new(sentence_params)
    if @sentence.save
      redirect_to sentence_path(@sentence.id)
    else
      @sentences = Sentence.all
      render :top
    end
  end

  def destroy
    @sentence = Sentence.find(params[:id])
    @sentence.destroy
    redirect_to root_path
  end

  def update
    @sentence = Sentence.find(params[:id])
    if @note.update(sentence_params)
      redirect_to sentence_path(@sentence.id)
    else
      @sentences = Sentence.all
      render :edit
    end
  end

  private

  def sentence_params
    params.require(:sentence).permit(:title, :introduction, :references)
  end
end
