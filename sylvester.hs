module Main where
main = do 
    putStrLn "Let's computer Sylvester's sequence:"
    number <- getLine
    putStrLn ("Sylvester's seqeuence is " ++ show (sylvester (read number))  ++ ".")

sylvester 0 = 2
sylvester s = sylvester p ^ 2 - sylvester p + 1 where p = s - 1
