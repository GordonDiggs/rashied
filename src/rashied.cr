require "./rashied/*"
require "kemal"

get "/:term" do |req|
  term = req.params.url["term"]

  "You want #{term}?"
end

Kemal.run
