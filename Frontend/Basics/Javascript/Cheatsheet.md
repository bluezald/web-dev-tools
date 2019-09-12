## Array
### slice()
- returns the selected elements in an array, as a new array object.
- selects the elements starting at the given start argument, and ends at, but does not include, the given end argument.
```js
const history = history.slice(0, stepNumber + 1);
```

### Object to Query String Manual
```js
var obj = {value1: 'prop1', value2: 'prop2', value3: 'prop3'};
var arr = [];
for (var key in obj) {
    if (obj.hasOwnProperty(key)) {
        arr.push(key + '=' + obj[key]);
    }
};
var result = arr.join(',');
```

### DOMParser
```js
fetch('/about').then(function (response) {
	// The API call was successful!
	return response.text();
}).then(function (html) {

	// Convert the HTML string into a document object
	var parser = new DOMParser();
	var doc = parser.parseFromString(html, 'text/html');

	// Get the image file
	var img = doc.querySelector('img');
	console.log(img);

}).catch(function (err) {
	// There was an error
	console.warn('Something went wrong.', err);
});
```