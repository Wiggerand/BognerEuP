json.extract! movie, :id, :title, :rating, :total_gross, :description, :released_on, :created_at, :updated_at
json.url movie_url(movie, format: :json)