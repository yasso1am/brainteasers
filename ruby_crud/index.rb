require 'pry'
require 'httparty'

class DevPoint
  include HTTParty
  base_uri 'http://json-server.devpointlabs.com/api/v1'
  
  def initialize(service, page)
    # @options = { query: { site: service, page: page } }
  end
  
  def get_users
    self.class.get("/users")
  end

  def get_user
    puts " By id, which specific user would you like to get? "
    puts get_users
    puts
    selection = gets.strip.to_i
    puts self.class.get("/users/#{selection}")
    puts
  end

  def create_user
    puts " What is your first name? "
    f_name = gets.strip
    puts " What is your last name? "
    l_name = gets.strip
    puts " And how about a phone number? "
    p_number = gets.strip.to_i
    options = body: { user: { first_name: "#{f_name}", last_name: "#{l_name}", phone_number: p_number} }
    self.class.post("/users", options)
    puts self.class.get("/users")
  end
  
end

def menu
  puts " ============================= "
  puts " Welcome to the DevPoint API "
  puts " Select the number for w would you like to do today: "
  puts " 1) Get all users "
  puts " 2) Get a specific user "
  puts " 3) Add a user "
  puts " 6) Quit "
  puts " ============================== "
  input = gets.strip.to_i
  selection(input)
end

def selection(input)
  @devpoint = DevPoint.new("devpoint", 1)
    case input
      when 1
        puts @devpoint.get_users
        menu
      when 2
        @devpoint.get_user
        menu
      when 3
        @devpoint.create_user
        menu
      when 6
        puts " Thanks for visiting !"
        exit
    end
end

menu
  
  