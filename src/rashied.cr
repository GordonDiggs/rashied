require "./rashied/*"
require "kemal"

get "/:term" do |env|
  term = env.params.url["term"]

  url = Rashied::ImageFinder.new(term).url

  if url
    env.redirect(url)
  else
    env.response.status_code = 404
  end
end

get "/" do
  "Specify a term"
end

Kemal.run
