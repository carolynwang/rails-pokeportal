# Q0: Why are these two errors being thrown?
The pending migrations error arises because there are things that have not been migrated yet.
The uninitiallized constant HomeController::Pokemon error arises because the Pokemon model does not exist yet, so it does not know what Pokemon is yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon is being generated in the HomeController where the pokemon is being assigned to a trainerless_pokemon.sample, and then being rendered in the index view. The common factor is that all of the pokemon are the ones where it is possible to be trainerless (Pikachu, Charmander, Bulbasaur, and Squirtle)

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that goes to "capture_path", which is the prefix for the /pokemon/capture route. the method/route type is patch. "capture_path(id: @pokemon)" sends a patch request to capture_path, and passes in @pokemon as the id parameter for the controller.

# Question 3: What would you name your own Pokemon?
Nylorac

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed current_trainer into redirect_to. current_trainer is not an explicit path, but rails uses trainer_path(current_trainer) by default because current_trainer has a "Trainer" model type.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Flash is a ActionDispatch that basically exposes whatever it is flashing in the next action and then is cleared out afterwards. In this case, @pokemon is the object that is returned by calling Pokemon.create(..), and it has an attribute called errors that contains any errors that is generated when attempting to create a Pokemon entry. the .full_messages.to_sentence just converts the error messages to a string that can be displayed. This line is placed right before the redirect_to to the form which is the next action, so that is why the error message flashes on the form.

# Give us feedback on the project and decal below!
Enjoying the decal, I'm learning a lot. For the project, I think we started using the devise gem without even really knowing what a gem was yet, so there were some things that I tried that just ended up working even though I didn't actually understand how it works.

# Extra credit: Link your Heroku deployed app
