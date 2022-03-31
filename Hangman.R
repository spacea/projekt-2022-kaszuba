#hangman

gameHangman = function(x) {
  words = c("kij", "ognisko", "motor", "rower", "helikopter", "pies", "brzoza",
            "dom", "hotel", "kubek", "drzewo", "deszcz", "dziecko", "plakat",
            "szafa", "dywan", "monitor", "nauczyciel", "lampa", "okno", "sklep")
  index = sample(1:21, 1)
  wybor = words[index]
  
  wektor = replicate(nchar(wybor), FALSE)
  
  
  for(i in 1 : 15) {
    
    while(TRUE){
      l = readline(prompt="Wpisz literę: ")
      
      if(nchar(l) == 1)break;
      if(nchar(l) > 1){
        cat("pierwsza litera\n")
        break;
      }
      cat("niepodałeś litery\n")
    }
    podana_litera = l[1]
    index = 1
    liczba_zgadnietych = 0
    t = 0
    for(sprawdzna_litera in strsplit(wybor,"")[[1]])
    {
     
      if(sprawdzna_litera == podana_litera)
      {
        if(wektor[index] == TRUE)
        {
          t = 2
        }else{
          t = 1
        }
        wektor[index] = TRUE
      }
      
      if(wektor[index] == TRUE){
        cat(sprawdzna_litera," ")
        liczba_zgadnietych = liczba_zgadnietych+1
      }else{
        cat("_ ")
      }
      index = index+1
    }
    cat('\n')
    if(t == 0){
      cat("Nietrafiłeś \n")
    }else if(t == 1){
      cat("Trafiłeś\n")
    }else{
      cat("Już istnieje\n")
    }
    if(liczba_zgadnietych == nchar(wybor))
    {
      
      return(cat("WYGRAŁEŚ"))
    }
    
  }
  
  return(cat(c("PRZEGRAŁEŚ, prawidłowa odpowiedź to:", wybor)))
}



gameHangman(wybor)
