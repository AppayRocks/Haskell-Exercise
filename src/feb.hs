main :: IO()
main = putStrLn $ show $ calc 8181

calc :: Integer -> Integer
calc 0 = 0
calc 1 = 1
calc n = calc(n-1) + calc(n-2)
