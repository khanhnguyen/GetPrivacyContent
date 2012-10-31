class PoliciesController < ApplicationController
  caches_page :privacy

  def privacy
    agent =  Mechanize.new
    page = agent.get("http://www.dfps.state.tx.us/policies/privacy.asp")    
    @privacy_content = page.search('/html/body/table[2]/tr/td[2]').to_html
    puts "privacy content:==================", @privacy_content
  end
end
