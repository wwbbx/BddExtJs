# use "grunt -v" to run will success
# because package.json installed grunt-contrib-jasmine
# it can recognize "describe".

describe 'Simple grunt tests without Ext js 5', ->
  it 'true should be true', ->
    expect(true).toBe(true)

  it 'array length is 2', ->
    name = []
    name.push(1,2)

    expect(name.length).toEqual(2)

