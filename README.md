Ripple RPC Client
================

Make API calls to rippled servers using their RPC interface.

    RippleRpcClient = require 'ripple-rpc-client'
      
    rpc_client = new RippleRpcClient 'http://s1.ripple.com:51234'

    account_info_params =
      account: 'r4EwBWxrx5HxYRyisfGzMto3AT8FZiYdWk'

    rpc_client.call "account_info", account_info_params, (err, resp) ->
      console.log resp


Simply call the client with the method name and parameters, with a callback.

    { account_data: 
       { Account: 'r4EwBWxrx5HxYRyisfGzMto3AT8FZiYdWk',
         Balance: '4656417802',
         Flags: 0,
         LedgerEntryType: 'AccountRoot',
         OwnerCount: 31,
         PreviousTxnID: 'ED9CF4C6C69AE1E2AE71252624BA0A301A0678DDE2FF64599448E61D3F65908C',
         PreviousTxnLgrSeq: 7030365,
         Sequence: 478,
         index: '8D59BDB0D4F5222CA3E6F002911391938F3C7A8642125B6DE5FE449451E224FA' },
      ledger_current_index: 7035169,
      status: 'success' }

