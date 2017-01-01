lend amount balance = let newBalance = balance - amount
                          reserve = 100
                      in if balance < reserve
                         then 0
                         else newBalance

nearest = let a = 1
          in let b = 2
            in a + b

lend2 amount balance = if amount < reserve * 0.5
                       then newBalance
                       else 0
    where reserve = 100
          newBalance = balance - amount
