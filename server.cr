require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "Hello, world! The time is #{Time.now}\r\n"
  context.response.print "This is meant to be a new line.\r\n"
end

address = server.bind_tcp "0.0.0.0", 8080
puts "Listening on http://#{address}"
server.listen
