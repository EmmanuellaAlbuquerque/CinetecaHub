class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(name: params[:genre][:name])

    if @genre.save
      flash[:notice] = "O gênero #{@genre.name} foi salvo!"
      return redirect_to new_genre_path
    end

    render :new
  end

  def index
    @genres = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    if @genre.update(name: params[:genre][:name])
      return redirect_to genres_path
    end

    render :edit
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = @genre.movies
  end
end
