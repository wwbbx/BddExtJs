# in the Gruntfile.js, it already load 'bootstrap.js'
# which will loading Ext js and application code.
# here we should be able to use Ext to create class instance

describe 'Use Ext Js 5 Tests', ->
  it 'should be able to create Ext object', ->
    main = Ext.create('BddExtJs.view.main.Main')

    main.should.not.be('undefined')