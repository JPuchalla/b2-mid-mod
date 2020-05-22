require 'rails_helper'

RSpec.describe "Movie Studios", type: :feature do
  before :each do

    @studio_1 = Studio.create(name: "Cinema123",
                               Location: "2080 S. Quebec St.",
                               movies: @movie_1)

    @movie_1 = Movie.create(title: "Peter Pan",
                            creation_year: "2001",
                            genre: "Denver")
  end

  it "visiting index page shows list of all movie studios and the names of the movies" do

    visit "/studios/index"
    expect(page).to have_content(@studio_1.name)
  end
end
