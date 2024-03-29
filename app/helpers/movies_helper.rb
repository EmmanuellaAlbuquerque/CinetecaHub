module MoviesHelper
  def render_movies_section(movies)
    return unless movies.any?

    movies.each do | movie |
      concat("<a id='link_movie_card' href='#{movie_path(movie)}'>
      #{
        if movie.poster.attached?
          "<img src='#{url_for(movie.poster)}' id='poster' alt='Pôster do Filme #{movie.title}' />"
        end
      }
      <div id='movie_info_wrapper'>
        <span id='year' class='info_item'>#{movie.year_of_release}</span>
        <span id='status' class='info_item'>#{movie.released}</span>
      </div>
      
      <p id='title'>#{movie.title}</p>
      </a>".html_safe)
    end
  end
end
