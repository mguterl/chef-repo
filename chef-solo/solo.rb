#
# Example Chef Solo Config
log_level         :info
file_store_path   File.join(File.dirname(__FILE__), '..')
file_cache_path   File.join(File.dirname(__FILE__), '..')
role_path         File.join(File.dirname(__FILE__), '..', "roles")
cookbook_path     File.join(File.dirname(__FILE__), '..', "cookbooks")
Chef::Log::Formatter.show_time = false
