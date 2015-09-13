require "erb"

name = "Dan"
message = "Hello, <%= name %>."
erb = ERB.new(message)

puts erb.result  # => "Hello, Dan."

=begin
require "sinatra"

get "/tasks" do
  tasks = ["pay bills", "buy milk", "learn Ruby"]
  erb :index, locals: { tasks: tasks }  ###[you would use the erb, then the index file you want, then locals and then the array you want.]
end

# These lines can be removed since they are using the default values. They've
# been included to explicitly show the configuration options.
set :views, File.join(File.dirname(__FILE__), "views")
set :public_folder, File.join(File.dirname(__FILE__), "public")

=end
