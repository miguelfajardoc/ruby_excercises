def pipeline(*funcs)
  -> (arg) {
    i = 0
    var = funcs[i].(arg)
    i += 1
    for i in 1...funcs.size do
      var = funcs[i].(var)
    end
    return var
#funcs[2].(funcs[1].(funcs[0].(arg)))
  }
end

fun = pipeline(-> (x) { x * 3 }, -> (x) { x + 1 }, -> (x) { x / 2 })
puts (fun.call(3)) # should print 5
