-- computes Sylvester's sequence - https://en.wikipedia.org/wiki/Sylvester%27s_sequence
-- written in Haskell - runhaskell sylvester.hs

module Main where
main = do 
    putStrLn "Let's compute Sylvester's sequence:"
    number <- getLine
    putStrLn ("Sylvester's seqeuence is " ++ show (sylvester (read number))  ++ ".")

sylvester 0 = 2
sylvester s = (sylvester p ^ 2 - sylvester p) + 1 where p = s - 1
