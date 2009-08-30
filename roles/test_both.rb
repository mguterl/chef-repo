name "test"
recipes "users", "sudo"
override_attributes {"authentication" => {"users" => ["sid137"], "authorization" => {"sudo_users" => ["sid137"], "sudo_groups" => ["sid137"]}}

description 'Allows me to log in and test server config, functionality.  

Creates a user "sid137"
adds my public ssh key
Adds sid137 to the sudoers file'


