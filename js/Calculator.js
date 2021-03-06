// Generated by CoffeeScript 1.8.0

/*!
 *  VAT Calculator
 *
 *  calculates the tax value
 *
 *  @version 1.0.0
 *  @author Robert Kummer
 *  @license MIT
 */

(function() {
  this.Calculator = (function() {
    function Calculator(ruleset, country) {
      this.ruleset = ruleset;
      this.country = country;
      this.price = 0;
    }

    Calculator.prototype.setPrice = function(price) {
      this.price = price;
    };

    Calculator.prototype.calculate = function(country, company) {
      var taxValue;
      taxValue = this.getTaxValue(country, company);
      return new Price(this.price, taxValue, this.getTaxRuleValue(country, company), country, company);
    };

    Calculator.prototype.getTaxValue = function(country, company) {
      return this.getTaxRuleValue(country, company) * this.price;
    };

    Calculator.prototype.getTaxRuleValue = function(country, company) {
      if (country === "") {
        country = this.country;
      }
      if (this.ruleset.hasRule(country)) {
        if (company && country !== this.country) {
          return 0;
        } else {
          return this.ruleset.getRuleValue(country);
        }
      }
      return 0;
    };

    return Calculator;

  })();

}).call(this);
