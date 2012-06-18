# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'slim', :slim => { :pretty => true } do
  watch(%r'^.+\.slim$')
end

guard 'coffeescript', :input => 'js'

guard 'sass', :input => 'css', :output => 'css'

guard 'livereload' do
  watch(%r{.+\.(erb|haml|slim)})
  watch(%r{.+\.(css|js|html)})
  # Rails Assets Pipeline
end
