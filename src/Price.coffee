# result of a calculator is a price object
class @Price
  constructor: (@net, @tax, @rate, @country, @company) ->

  getNetValue: () ->
    return @net

  getValue: () ->
    return @net + @tax

  getTax: () ->
    return @tax

  getTaxRate: () ->
    return @rate

  getCountry: () ->
    return @country

  isCompany: () ->
    return @company
