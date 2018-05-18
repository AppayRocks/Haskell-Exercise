def calc_py(n):
    var_a, var_b = 0, 1
    for _ in xrange(n):
       var_a, var_b = var_b, var_a + var_b
    return var_a

print calc_py(8181)
