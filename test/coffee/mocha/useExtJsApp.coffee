chai = require 'chai'
chai.should()

describe 'Use Ext JS 5 App', ->
  it 'should be able to create Ext class', ->
    main = Ext.create('BddExtJs.view.main.Main')

    main.should.not.equal(null)