var foobar = function(callback) {
    setTimeout(function() {
        // trigger callback after 1000ms
        callback();
    }, 1000);
};

var foo = {
    key: {
      nestedKey: 'value'
    },
    array: [1],
    nestedArray: [1, 2, ['2a', ['2a-I']]]
}