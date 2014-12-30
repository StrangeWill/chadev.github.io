require 'json'
require 'yaml'

module Meetups
  class Generator < Jekyll::Generator
    safe true
  
    def generate(site)
      meetups_path = '_meetups/*/'
      meetups = Dir[meetups_path].map{ |a| read_config(a) }
      
      page = site.pages.detect { |page| page.name == 'meetups.html' }
      page.data['meetups'] = meetups
    end
    
    def read_config(path)
      file_path = "#{path}about.yml"
      if !File.exist?(file_path)
        raise "Meetup about.yml not found at expecting path '#{file_path}'."
      end
      
      config = YAML.load_file(file_path)
      config['image'] = "#{path}#{config['image']}".sub(/^_meetups/, 'meetups')
      config
    end
  end
end