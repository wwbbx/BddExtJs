chai = require 'chai'
chai.should()

describe 'Simple mocha test without Ext js 5', ->
  it 'true should be true', ->
    true.should.equal(true)

  it 'object name should be as expected', ->
    people = {}
    people.name = 'mocha'

    people.name.should.equal('mocha')

