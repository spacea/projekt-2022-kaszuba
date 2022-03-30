
#Gra 1 Papier, Kamień, Nożyce

RockPaperScissors = function(x) {
  Options = c("rock", "paper", "scissors")
  Index = sample(1:3, 1)
  Comp = Options[Index]
  
  
  
b = paste(Comp, "and", x)

posibilities = c("scissors and rock",
                 "scissors and paper",
                 "scissors and scissors",
                 "paper and rock",
                 "paper and scissors",
                 "rock and rock",
                 "rock and paper",
                 "rock and scissors")

d = match(b, posibilities)
  
results = switch(d, "scissors and rock, wygrałeś",
            "scissors and paper, przegrałeś",
            "scissors and scissors, powtórz operację",
            "paper and rock, wygrałeś",
            "paper and scissors, przegrałeś",
            "paper and paper, powtórz operację",
            "rock and rock, powtórz operację",
            "rock and paper, wygrałeś ",
            "rock and scissors, przegrałeś" ) 
  
return(results) 
  
}

RockPaperScissors("rock")


