RippleRpcClient = require "#{__dirname}+/../"
assert = require 'assert'

describe 'Ripple RPC Client', ->

  it 'should get account info', (callback) ->
  
    rpc_client = new RippleRpcClient 'http://s1.ripple.com:51234'

    account_info_params =
      account: "rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh"

    rpc_client.call "account_info", account_info_params, (err, resp) ->

      gravatar_url = "http://www.gravatar.com/avatar/981e67963b83c414c90f424751edc03d"
      assert.strictEqual resp.account_data.urlgravatar, gravatar_url
      assert.strictEqual resp.account_data.RegularKey, "rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh"
      callback()
  
