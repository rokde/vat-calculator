# Rule set knows all known rules
class @RuleSet
  constructor: () ->
    @rules = {}

  addRule: (rule) ->
    @rules[rule.identifier()] = rule.value()

  hasRule: (identifier) ->
    for id of @rules
      if id is identifier
        return true
    return false

  getRuleValue: (identifier) ->
    for id,value of @rules
      if id is identifier
        return @rules[id]
    return null
