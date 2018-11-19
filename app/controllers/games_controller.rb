class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << [*('A'..'Z')].sample
    end
  end

  def score
    @word = params[:word]
    @word_let = @word.split('')
    @grid_letters = params[:letters].split(' ')
    # puts @grid_letters.class
    # print @grid_letters

    # CHECK IF WORD CONTAINS LETTERS FROM GRID
    if @word_let.all? { |l| @grid_letters.include?(l.upcase) }
    # CHECK IF WORD IS VALID, FROM API

    # IF TRUE ON BOTH CONDITIONS RETURN SUCCESS!
    # @letters.each do |letter|
    #   if @word_let.include "#{letter}"
    #     puts "#{letter} is part of the grid!"
    #   end
    # end
    # "https://wagon-dictionary.herokuapp.com/#{@word}"
  end
end
