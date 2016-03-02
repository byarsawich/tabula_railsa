The check for params[:name] would be better implemented with another action on the home controller.

I'm not sure if you can check for a post or get in ruby, but that would also be a better check to prevent people
from typing in variables in the url to go straight to the post action. 
