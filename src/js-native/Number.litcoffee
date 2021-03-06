Adds helper methods to the native javascript Number class

@.**add** value

Returns ```@``` incremented by ```value```

If value is not a number the original value is returned unmodifed

Note that the original ```@``` value is not modified

    Number::add = (value)->
      if is_Number(value)
        @ + value
      else
        @

@.**dec** [value]

Returns ```@``` decremented by 1 or by ```[value]``` (if provided)

Note that the original ```@``` value is not modified

    Number::dec = (value)->
      if is_Number(value)
        @ - value
      else
        @ - 1

@.**in_Between**  min, max

Returns true if @ is between ```min``` and ```max``` for example

```coffee
(10).in_Between(5,15)  # returns true
(10).in_Between(10,15) # returns false
(10).in_Between(50,50) # returns false
```

    Number::in_Between = (min,max )->
        (min < @ < max)


@.**inc** [value]

Returns ```@``` incremented by 1 or by ```[value]``` (if provided)

Note that the original ```@``` value is not modified

    Number::inc = (value)->
      if is_Number(value)
        @ + value
      else
        @ + 1



@.**invoke_After** callback

Invokes the **callback** function after ```@``` miliseconds

    Number::invoke_After = (callback)->
        if callback instanceof Function
            setTimeout callback, @

    Number::wait = Number::invoke_After

@.**is_Number**

Returns true if ```@``` is a number

Returns false if ```@``` is NaN (i.e. Not a Number)

    Number::is_Number = ->
      return @ instanceof Number and @.str().is_Not('NaN')

@.**log**

Logs @ to the console

    Number::log =
      -> console.log @.toString()

@.**random [start_Value]**

returns a random number between 0 and @

if start_Value is provided: returns a random number between start_Value and start_Value + @

    Number::random = (start_From)-> 
      value = ~~(Math.random()*@)
      return value + start_From if start_From  
      return value               
      

@.**str**

Short version of ```toString```

    Number::str =
      -> @.toString()


@.**str**
Convert number to decimal (with max 4 decimal values)

see https://twitter.com/DinisCruz/status/745283929142398976
  
    Number::to_Decimal = -> 
      Number.parseFloat(@.toFixed(4))
      
---
back to [index](index.html)