RippleRpcClient = require "#{__dirname}+/../"
assert = require 'assert'

TEST_ACCOUNT = 'r4EwBWxrx5HxYRyisfGzMto3AT8FZiYdWk'

rpc_client = new RippleRpcClient 'http://s1.ripple.com:51234'

describe 'Ripple RPC Client', ->

  it 'should get account info', (callback) ->
  
    account_info_params =
      account: TEST_ACCOUNT

    rpc_client.call "account_info", account_info_params, (err, resp) ->
      console.log err, resp
      assert.strictEqual resp.account_data.LedgerEntryType, "AccountRoot"
      callback()

  it 'should get account transactions', (callback) ->

    account_tx_params =
      account: TEST_ACCOUNT
      ledger_index_min: 1000

    rpc_client.call "account_tx", account_tx_params, (err, resp) ->
      assert.strictEqual resp.status, 'success'
      assert resp.transactions.length > 0
      console.log err, resp
      callback()

