module MoviesHelper
  def render_movies_section(movies)
    return unless movies.any?

    movies.each do | movie |
      concat("<a href='#{movie_path(movie)}'>
      #{movie.title}
      #{movie.year_of_release}
      #{movie.released}
      <br/>
      </a>".html_safe)
    end
  end
end
