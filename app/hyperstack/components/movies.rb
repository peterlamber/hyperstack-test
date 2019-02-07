class Movies < HyperComponent
  render(DIV) do
    H1 { "Movie count: #{Movie.count}" }
    H1 { Movie.find(1).title }

    # UL do
    #   Movie.all.each do |movie|
    #     # LI { "Title: #{movie.title}" }.on(:click) { display book } if book.available?
    #     MovieItem(movie: movie)
    #   end
    # end

  end
end