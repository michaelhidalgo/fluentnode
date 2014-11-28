#These Object prototypes have to be written using Object.defineProperty so that we can set the 
# enumerable value to false (otherwise 'for item of xyz' would include these methods)
Object.defineProperty Object.prototype, 'str', 
    enumerable  : false,  
    writable    : true,     
    value: ->
        return @.toString()
    
#Object.defineProperty Object.prototype, 'json',
#    enumerable  : false,  
#    writable    : true,
#    value: ->
#        return JSON.stringify(@)
    
Object.defineProperty Object.prototype, 'json_pretty',
    enumerable  : false,  
    writable    : true,
    value: ->
        return JSON.stringify(@,null,'  ')

Object.defineProperty Object.prototype, 'json_inspect',
    enumerable  : false,  
    writable    : true,
    value: ->
        return require('util').inspect(@)

Object.defineProperty Object.prototype, 'keys',
    enumerable  : false,
    writable    : true,
    value: ->
        return (key for own key of @)

Object.defineProperty Object.prototype, 'keys_All',
    enumerable  : false,
    writable    : true,
    value: ->
        return (key for key of @)

Object.defineProperty Object.prototype, 'call_Function',
    enumerable  : false,
    writable    : true,
    value: (method, params...)->
        callParams = [@]
        callParams.push param for param in params
        return method.apply(null,callParams)

Object.defineProperty Object.prototype, 'repl_Me',
    enumerable  : false,
    writable    : true,
    value: (onExit)->
        repl = require('repl')
        replServer = repl.start {prompt: '[fluentnode] repl> '}
        replServer.context.that = @
        replServer.context.replServer = replServer
        replServer.on 'exit', ->
          onExit()
        replServer

#This is how they were done originally (which broke a lot of things)
#Object::str          = -> @.toString()
#Object::json         = -> JSON.stringify(@)
#Object::json_pretty  = -> JSON.stringify(@,null,'  ')
#Object::json_inspect = -> require('util').inspect(@)