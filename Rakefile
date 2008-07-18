# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

require 'gettext/utils'

desc "Create mo-files for L10n" 
task :makemo do
  GetText.create_mofiles(true, "po", "locale")
end

desc "Update pot/po files to match new version." 
task :updatepo do
  MY_APP_TEXT_DOMAIN = "sgh-copia" 
  MY_APP_VERSION     = "sgh-copia 0.1" 
  GetText.update_pofiles(MY_APP_TEXT_DOMAIN,
                       Dir.glob("{app,lib}/**/*.{rb,erb,rhtml,rjs}") + Dir.glob("{vendor/plugins/active_scaffold/frontends/default/views,vendor/plugins/active_scaffold/lib/actions}/*.{rb,erb,rhtml}"),
                       MY_APP_VERSION)
end

