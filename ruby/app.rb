require "sinatra"

set :public_folder, File.join(__dir__, '/../public') # <- vite_ruby default dir

get "/" do
  erb :index
end

__END__
@@ layout
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <% if settings.development? %>
    <script type="module" src="http://localhost:3036/vite-dev/@vite/client"></script>
    <script type="module" src="http://localhost:3036/vite-dev/application.js"></script>
    <% else %>
    <script type="module" src="/vite/entrypoints/application.js"></script>
    <% end %>
  </head>
  <body>
    <%= yield %>
  </body>
</html>

@@ index
index
