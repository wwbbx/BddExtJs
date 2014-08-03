#chai = require 'chai'
#chai.should()

#describe 'Simple mocha test without Ext js 5', ->
#  it 'true should be true', ->
#    true.should.equal(true)
#
#  it 'object name should be as expected', ->
#    people = {}
#    people.name = 'mocha'
#
#    people.name.should.equal('mocha')

describe 'simple jasmine test without ext js 5', ->
   it 'should always pass', ->
     expect(true).toBe(true)

