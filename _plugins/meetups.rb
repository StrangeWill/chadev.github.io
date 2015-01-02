require 'json'
require 'yaml'
require 'rmeetup'

module Meetups
  class Generator < Jekyll::Generator
    safe true
  
    def generate(site)
      api_key = ENV['MEETUP_API']
      if api_key.nil?
        print 'No Meetup API Key found, skipping meetup integration.'
        return
      end
      
      page = site.pages.detect { |page| page.name == 'meetups.html' }
      page.data['meetups'] = get_meetup_info(api_key)
    end
    
    def get_meetup_info(api_key)
      client = RMeetup::Client.new do |config|
        config.api_key = api_key
      end

      group_results = client.fetch(:groups, { :group_urlname => 'chadevs' })
      results = client.fetch(:events, {
        :group_id => group_results[0].id,
        :status => 'upcoming,past' })
      meetups = []
      results.reverse.each do |result|
        meetups.push(map_event_result(result))
      end
      meetups
    end
    
    def map_event_result(result)
      {
        'title' => result.name,
        'presenter' => '',
        'date' => result.time,
        'location' => get_venue(result),
        'signup' => result.event_url,
        'description' => result.event.has_key?('description') ? result.description : ''
      }
    end
    
    def get_venue(result)
      "#{result.venue.name} #{result.venue.address_1} #{result.venue.address_2} #{result.venue.city}"
    end
  end
end