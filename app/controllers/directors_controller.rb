class DirectorsController < ApplicationController

  def director_params
    params.require(:director).permit(:name, :nationality, :birth_date, :genre_id)
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)

    if @director.save
      return redirect_to directors_path
    end

    render :new
  end

  def index
    @directors = Director.all
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    if @director.update(director_params)
      return redirect_to directors_path
    end

    render :edit
  end

  def show
    @director = Director.find(params[:id])
    @movies = @director.movies
  end

end