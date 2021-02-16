require 'rack'


Rack::Server.start(
  app: Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['hello world']]
  end
)

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-Type'] = 'text/html'
  res.write("Hello World")
  res.finish
end
