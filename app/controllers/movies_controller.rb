class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :year_of_release, :synopsis, :made_in, :duration, :genre_id, :director_id, :status, :poster).tap do | tap_params |

      tap_params[:status] = tap_params[:status].to_i

      if tap_params[:year_of_release].to_i <= Date.today.year
        tap_params[:released] = true
      else
        tap_params[:released] = false
      end
    end
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
    @published_movies = Movie.published
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if params[:movie][:poster].present?
      @movie.poster.purge_later if @movie.poster.attached?
      @movie.poster.attach(params[:movie][:poster])
    end

    if @movie.update(movie_params)
      return redirect_to movies_path
    end

    render :edit
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def publish
    movie = Movie.find(params[:id])
    movie.published!
    redirect_to movie_path(movie.id)
  end

end