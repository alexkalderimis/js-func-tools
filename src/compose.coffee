compose = (fs...) -> (args...) ->
    funcs = fs.slice()
    while f = funcs.pop()
        ret = f.apply(null, args)
        args = [ret]
    ret

module.exports = compose
