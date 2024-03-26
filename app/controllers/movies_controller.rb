class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :year_of_release, :synopsis, :made_in, :duration, :genre_id, :director_id)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      return redirect_to movies_path
    end

    render :new
  end

  def index
    @movies = Movie.all
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      return redirect_to movies_path
    end

    render :edit
  end

  def show
    @movie = Movie.find(params[:id])
  end

end