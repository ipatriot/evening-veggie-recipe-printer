
require 'erb'

recipe = {
  name: "Roasted Brussel Sprouts",
  ingredients: [
    "1 1/2 pounds Brussels sprouts",
    "3 tablespoons good olive oil",
    "3/4 teaspoon kosher salt",
    "1/2 teaspoon freshly ground black pepper"
	    ],
	  directions: [
	    "Preheat oven to 400 degrees F.",
	    "Cut off the brown ends of the Brussels sprouts.",
	    "Pull off any yellow outer leaves.",
	    "Mix them in a bowl with the olive oil, salt and pepper.",
	    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
	    "They should be until crisp on the outside and tender on the inside.",
	    "Shake the pan from time to time to brown the sprouts evenly.",
	    "Sprinkle with more kosher salt ( I like these salty like French fries).",
	    "Serve and enjoy!"
	    ]
	  }
#in the template string you do the ruby code in erb
#you use the <%= %> when you want to display to the user
#you want tthe <% %> you want to do some code in ruby, but don't want to puts/print/display it. 
def template_string #you have to create a template string for erb
	"#=================================#
	# Recipe: <%= recipe[:name] %> #
	#=================================#

	Ingredients
	-----------

	<% recipe[:ingredients].each do |ingredient| %><%= ingredient %>
	<% end %>
	Directions
	----------
	<% recipe[:directions].each_with_index do |step, index| %>
	<%= index + 1 %>. <%= step %>
	<% end %>"
end

def ruby_output(recipe) #in here it is done in ruby,
	  puts "#=================================#"
	  puts "# Recipe: #{recipe[:name]} #"
	  puts "#=================================#"
	  puts
	  puts "Ingredients"
	  puts "-----------"
	  puts
	  recipe[:ingredients].each { |ingredient| puts ingredient}
	  puts
	  puts "Directions"
	  puts "-----------"
	  puts
	  recipe[:directions].each_with_index { |step, index| puts "#{index + 1}. #{step}\n\n" }
end

def erb_output(recipe, template_string)
	  template = ERB.new template_string
	  puts template.result
end

	puts "***Ruby output***"
	ruby_output(recipe)
	puts "***ERB output***"
	erb_output(recipe, template_string)
