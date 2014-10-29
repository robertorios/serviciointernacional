# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

foobar = (callback) ->
  setTimeout (->
    
    # trigger callback after 1000ms
    callback()
    return
  ), 1000
  return

foo =
  key:
    nestedKey: "value"

  array: [1]
  nestedArray: [
    1
    2
    [
      "2a"
      ["2a-I"]
    ]
  ]
