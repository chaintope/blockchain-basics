require 'net/http'
require 'uri'
require 'json'
 
# https://en.bitcoin.it/wiki/API_reference_(JSON-RPC)#Ruby 
 
DEFAULT_SERVICE_URL =  "http://bitcoin:local321@10.5.0.10:18332"

class BitcoinRPC
  def initialize(service_url = DEFAULT_SERVICE_URL)
    @uri = URI.parse(service_url)
  end
 
  def method_missing(name, *args)
    post_body = { 'method' => name, 'params' => args, 'id' => 'jsonrpc' }.to_json
    resp = JSON.parse( http_post_request(post_body) )
    raise JSONRPCError, resp['error'] if resp['error']
    resp['result']
  end
 
  def http_post_request(post_body)
    http    = Net::HTTP.new(@uri.host, @uri.port)
    request = Net::HTTP::Post.new(@uri.request_uri)
    request.basic_auth @uri.user, @uri.password
    request.content_type = 'application/json'
    request.body = post_body
    http.request(request).body
  end
 
  class JSONRPCError < RuntimeError; end
end
 
if $0 == __FILE__
  rpc = BitcoinRPC.new
  p rpc.getinfo
  p rpc.getbalance
  p rpc.getnewaddress
  p rpc.dumpprivkey( rpc.getnewaddress )
end
