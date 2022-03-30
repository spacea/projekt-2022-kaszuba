
#Gra 1 Papier, Kamień, Nożyce

PapierKamienNozyce = function(x) {
  Options = c("kamien", "papier", "nozyce")
  Index = sample(1:3, 1)
  Comp = Options[Index]
  
  
  
b = paste(Comp, "i", x)

prawdopodonienstwa = c("nozyce i kamien",
                      "nozyce i papier",
                      "nozyce i nozyce",
                      "papier i kamien",
                      "papier i nozyce",
                      "papier i papier",
                      "kamien i kamien",
                      "kamien i papier",
                      "kamien i nozyce")

d = match(b, prawdopodonienstwa)
  
rezultaty = switch(d, "nozyce i kamien, wygrałeś",
            "nozyce i papier, przegrałeś",
            "nozyce i nozyce, jest remis, proszę powtórz operację",
            "papier i kamien, wygrałeś",
            "papier i nozyce, przegrałeś",
            "papier i papier,jest remis, proszę powtórz operację",
            "kamien i kamien,jest remis, proszę powtórz operację",
            "kamien i papier, wygrałeś ",
            "kamien i nozyce, przegrałeś" ) 
  
return(rezultaty) 
  
}

PapierKamienNozyce("kamien")


