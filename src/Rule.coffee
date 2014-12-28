# Rule for defining the tax rules per country
class @Rule
  constructor: (@id, @val) ->

  identifier: () ->
    return @id

  value: () ->
    return @val