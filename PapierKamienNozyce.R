replicate(50, PapierKamienNozyce(sample(c("kamien", "papier", "nozyce"), 1)))

PapierKamienNozyce <- function (twoj_ruch) {
  
  opcje <- c("kamien", "papier", "nozyce")
  stopifnot(length(twoj_ruch) == 1L, twoj_ruch %in% opcje)
  komp <- sample(opcje, 1)
  names(komp) <- if (identical(twoj_ruch, komp)) {
    
    "remis"
  }
  
  else if (twoj_ruch == "kamien" & komp == "nozyce" | twoj_ruch == "papier" & 
           komp == "kamien" | twoj_ruch == "nozyce" & komp == "papier") {
    
    "wygrałeś"
    
  }
  
  else {
    
    "przegrałeś"
  }
  
  komp
  
}

PapierKamienNozyce("nozyce")

