###!
#  VAT Calculator
#
#  calculates the tax value
#
#  @version 1.0.0
#  @author Robert Kummer
#  @license MIT
###
class @Calculator
  constructor: (@ruleset, @country) ->
    @price = 0

  setPrice: (@price) ->

  # calculates the price for the given company
  # @return Price
  calculate: (country, company) ->
    taxValue = @getTaxValue(country, company)
    return new Price(@price, taxValue, @getTaxRuleValue(country, company), country, company)

  getTaxValue: (country, company) ->
    return @getTaxRuleValue(country, company) * @price

  getTaxRuleValue: (country, company) ->
    if (country is "")
      country = @country
    if @ruleset.hasRule(country)
      if company and country isnt @country then return 0
      else return @ruleset.getRuleValue(country)
    return 0
