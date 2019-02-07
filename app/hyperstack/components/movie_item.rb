class MovieItem < HyperComponent
  param :movie
  render(LI) do
    # alert(@Movie.duration.sec)
    INPUT(type: :checkbox, checked: @Movie.released).on(:change) {@Movie.update(released:!@Movie.released)}
    # INPUT(type: :text, text: @Movie.duration, placeholder: @Movie.duration).on(:change) {@Movie.update(duration: Time.now)}
    SPAN { @Movie.title}
    A {' (D) '}.on(:click) {@Movie.update(duration: Time.now)}
    BR()
    @Movie.duration.to_s
  end
end