# General Notes

### Setting path names
* path names used when using link_to/button_to in views
* find in rails routes
* if use :as :nameOfPath, can change route without having to change path name

### -p tag in Git
* used if you want to

### .find and .find_by
* .find usually used when you know for sure it'll find it. Will return error if not found
* .find_by doesn't throw error if not found, just does not return anything?

### rescue
* used for handling exceptions and errors.
	begin
    #... process, may raise an exception
	rescue =>
	    #... error handler
	else
	    #... executes when no error
	ensure
	    #... always executed
	end

### Changes to Environment
* changed ~/.zhrc file and added "export EDITOR='subl --wait'"
* think it worked for adding development.key for adding twitter API KEYS
* reference video: https://gorails.com/episodes/rails-for-beginners-part-23-rails-credentials?autoplay=1
* UPDATE: removed line from zhsrc file. used command 'EDITOR=vim rails credentials:edit --environmet=development' and opened and edited credentials on vim.

### .dig method
* 'Digs' into array or hashes
* will return nil instead of raising errors if no element found in index where it was looking, which can be helpful
* ex: array = [ [11, 22, 33], [21, 22, 23], [31, 32, 33] ]
* array.dig(0,0) => 11
* params = {
  name: "John Doe",
  profile_attributes: {
    age: 28,
    address_attributes: {
      country: "Canada",
      city: "Toronto"
    }
  }
}
* params.dig(:profile_attributes, :address_attributes, :city) => "Toronto"

### before_action
* use before_action to use shared variables across all actions
* specifies a function to perform before doing any action

### Command 'rails routes'
* Displays routes of app
* Useful when creating/writing down paths when using link_to/button_to in embedded ruby html files
* append a "_path" to end of prefix
