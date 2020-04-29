# Vanilla Javascript
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

## URLSearchParams
```js
// Assuming "?post=1234&action=edit"

var urlParams = new URLSearchParams(window.location.search);

console.log(urlParams.has('post')); // true
console.log(urlParams.get('action')); // "edit"
console.log(urlParams.getAll('action')); // ["edit"]
console.log(urlParams.toString()); // "?post=1234&action=edit"
console.log(urlParams.append('active', '1')); // "?post=1234&action=edit&active=1"
```

## XHR

### Loading remote text file from a repo
```js
var request = new XMLHttpRequest();
request.open('GET', githubUrl, true);
request.send(null);
request.onreadystatechange = function () {
	if (request.readyState === 4 && request.status === 200) {
		console.log(request.responseText)
	}
}
```
# jQuery

## UI Filter Search
```js
$(`#input_search`).on("keyup", function () {
let value = $(this).val().toLowerCase()
$("#table_body tr").filter(function () {
$(this)
  .toggle(
    $(this)
      .children()[0]
      .innerText
      .toLowerCase()
      .indexOf(value) > -1
  )
})
})
```

- References:
	- https://davidwalsh.name/query-string-javascript
