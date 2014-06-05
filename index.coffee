request = require 'superagent'

class RippleRpcClient
  constructor: (host) ->
    @host = host

  call: (method, params, callback) ->
    request 
      .post @host
      .send
        method: method
        params: [ params ]
      .end (error, response) ->
        if error
          callback error
        else
          callback null, response.body.result


module.exports = RippleRpcClient

