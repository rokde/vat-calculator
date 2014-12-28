vat-calculator
==============

Tax calculator for new reverse-charge processing within the european union.

Clone the repository and open index.html in your browser.

Usage
-----

```<script src="dist/vat-calculator-1.0.0.min.js"></script>```


	var country = "AT", company = false;

	function calculateSum() {
		/* @var Price price */
		var price = calculator.calculate(country, company);
	}

