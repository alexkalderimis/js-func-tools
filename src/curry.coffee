curry = (n, args) ->
    target = if (n.length?) then n.length else n
    args ?= []
    _curry = (f) -> (_args...) ->
        combined = args.concat(_args)
        if combined.length >= target
            f.apply(null, combined)
        else
            curry(target, combined)(f)
    if n.length? then _curry(n) else _curry

 module.exports = curry
