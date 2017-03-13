class XcodeProjectConfig
    require 'find'

    attr_accessor :project_name, :dev_mode

    def initialize(attributes = {})
        check_ruby_version
        @dev_mode = false
        rename_files_and_folders
        remove_ci_tools
        remove_docs_and_config
        puts "All done, open up #{@project_name}.xcworkspace and make an app."
        puts "If you have other problems, please email to contact the author: ArthurShuai (email: zhixingui_liushuai@163.com)"
    end

    def check_ruby_version
        ruby_version = RUBY_VERSION
        ruby_split_version = ruby_version.split(".").map { |s| s.to_i }
        ruby_major = ruby_split_version[0].nil? ? 0 : ruby_split_version[0]
        ruby_minor = ruby_split_version[1].nil? ? 0 : ruby_split_version[1]
        ruby_revision = ruby_split_version[2].nil? ? 0 : ruby_split_version[2]
        ruby_major_minor = "#{ruby_major}.#{ruby_minor}".to_f
        if ruby_major_minor < 1.9
            puts "XcodeProject requires Ruby 1.9+, you are running version #{ruby_version}. Update your Ruby and try again, consider using rvm for managing Rubies."
            exit
        end
    end

    def rename_files_and_folders
        overwrite = "APPNAME"
        Find.find(Dir.pwd) do |d|
            if d.include?(".xcodeproj")
                overwrite = File.basename(d,'.xcodeproj')
                break
            end
        end
        @project_name = File.basename(Dir.pwd)
        puts overwrite
        puts "#{@project_name}"
        5.times do
            Dir["**/*"].each do |f|
                file_name = File.absolute_path f
                unless File.directory? file_name
                    content = File.read(file_name).force_encoding('UTF-8')
                    content.gsub!(overwrite, @project_name)
                    File.open(f, 'w') { |file| file.write content }
                end
            end
        end
        5.times do
            Dir["**/*"].each do |f|
                file_name = File.absolute_path f
                should_rename = file_name.include? overwrite
                new_file_name = file_name.gsub(overwrite, @project_name)
                File.rename(f, new_file_name) if (should_rename and File.exists? f)
            end
        end

    end

    def remove_ci_tools
        system "rm -rf ContiniOSIntegration/" if File.exists? Dir.pwd + "/ContiniOSIntegration/"
    end

    def remove_docs_and_config
        puts "trashing unecessary files..."
        puts "well, would have done if dev mode wasn't on" if @dev_mode
        if !@dev_mode
            system "rm configure_projectName.rb" if File.exists? Dir.pwd + "/configure_projectName.rb"
            Dir["**/*"].each do |f|
                file = File.absolute_path f
                should_delete = file.include? "README"
                File.delete file if should_delete
            end
        end
    end
    
end

configure = XcodeProjectConfig.new()
