class WordsController < ApplicationController


  def index
    @words = Word.order("created_at DESC")
  end

  def create
      @word = Word.new(word_params)
    if @word.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def new
    @word = Word.new
  end

  def list
    @word = Word.all
  end



  private  

  # def multi_action
  #   @word = Word.find(params[:id])
  # end

  def word_params
    params.require(:word).permit(:image, :speech_id, :word_name, :meaning, :example).merge(user_id: current_user.id)
  end

end
