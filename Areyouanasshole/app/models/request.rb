require 'unirest'
class Request <ActiveRecord::Base


  def self.gogogo(what_you_say)
  response = Unirest.post "https://community-sentiment.p.mashape.com/text/",
    headers:{
      "X-Mashape-Key" => "Pt4tRlJp1dmshU1YOw7SOk9BqxHBp1KWzxRjsnmgxEYSl7QAPe",
      "Content-Type" => "application/x-www-form-urlencoded",
      "Accept" => "application/json"
    },
    parameters:{
      "txt" => what_you_say
    }

    return response.body["result"]["sentiment"]
    
  end
end
