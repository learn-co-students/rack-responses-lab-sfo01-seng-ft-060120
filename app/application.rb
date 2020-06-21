
class Application
  def call(env)
    resp = Rack::Response.new
    current_time = Time.now.hour
    # midnight = Time.now.beginning_of_day.to_i
    # noon = Time.now.middle_of_day.to_i
    if current_time > 12
      resp.write "Good Afternoon!"
    else
     resp.write "Good Morning!"
    end
    resp.finish
  end
end


#If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon. 
