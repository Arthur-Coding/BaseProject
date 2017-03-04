system "gem install xcodeproj"
require 'xcodeproj'

project_name = File.basename(Dir.pwd)
project_path = File.join(File.dirname(__FILE__), project_name+".xcodeproj")
project = Xcodeproj::Project.open(project_path)

dataHandingGroup = project.main_group.find_subpath(File.join(project_name,"DataHanding"),true)
viewsGroup = project.main_group.find_subpath(File.join(project_name,"Views"),true)
controllersGroup = project.main_group.find_subpath(File.join(project_name,"Controllers"),true)
