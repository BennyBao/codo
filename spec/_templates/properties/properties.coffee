# Property test class. It's almost the most difficult
# part to come up with stupid examples.
#
module.exports = class Person

  # @property [Array<String>] The nicknames
  #
  # All the nicknames the person is known by.
  nicknames: []

  # @property [Object]
  # The entity's position
  position:
    x: 0
    y: 0

  # Language helpers
  get = (props) => @::__defineGetter__ name, getter for name, getter of props
  set = (props) => @::__defineSetter__ name, setter for name, setter of props

  # @property [String] The first name
  get firstname: -> @_firstname
  set firstname: (@_firstname) ->

  # The last name
  get lastname: -> @_lastname
  set lastname: (@_lastname) ->

  # @property [Date] The day
  #   (of birth)
  get birth: -> @_birth

  # The twitter handle
  get twitter: -> @_twitter

  # @property [String] The confession
  set confession: (@_confession) ->

  # @property [String] Something different
  @property 'test', 
    get: -> 'test'
    set: (k,v) ->

  # @property [String] Something different 2
  @property 'test2', -> 'test'

  # @property [String] Something different 3
  @property 'test3', set: -> 'test'

  # The email address offer
  set email: (@_email) ->

  # This should not be swallowed
  test: ->