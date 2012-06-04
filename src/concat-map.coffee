concatMap = (f) -> (xs) ->
    ret = undefined
    for x in xs
        fx = f x
        ret = if ret is undefined
            fx
        else if typeof fx is 'string'
            ret + fx
        else if fx.slice?
            ret.concat(fx)
        else
            ret[k] = v for k, v of fx
            ret
    ret

module.exports = concatMap
                
