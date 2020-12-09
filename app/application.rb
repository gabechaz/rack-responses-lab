require 'pry'

class Application

    def call(env)

        resp = Rack::Response.new
        time = Time.now
        def time
            Time.now
        end

        if time.hour < 12
            
            resp.write "Good morning!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end