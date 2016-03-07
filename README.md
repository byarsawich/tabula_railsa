The check for params[:name] would be better implemented with another action on the home controller.

I'm not sure if you can check for a post or get in ruby, but that would also be a better check to prevent people
from typing in variables in the url to go straight to the post action.

Authentication keys are best stored in a .bash_profile or some other environment variable system.  This is so
they are no keys passed to github which will probably be stolen very quickly and can lead to other people
using your key to do things that cost you money or compromise a system you are working with.

You need to run migrations on every database, including test to set them up and possibly add new columns
or tables after your initial design.  You don't use seeds on your test database though.  Fixtures will work for any test data you might need and you can create other data in your tests if more is required.  This is done
because your test database is usually dropped and reloaded before each test.
