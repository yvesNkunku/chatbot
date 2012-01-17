#Yves_Nkunku_Nzolani

module Chatbot
class AnalyseQuestion

  def initialize(str)

  end


  def analysiere_Frage(satz)

    schluessel = ["Mensa", "Gebaeude", "A-Gebaeude","B-Gebaeude", "C-Gebaeude","D-Gebaeude","F-  

                 Gebaeude","N-Gebaeude","Bibliothek", "Raum", "AB-Foyer", "Parkplatz Ost", 

"Parkplatz West", "Campus 2"]

    myMuster = /vo[mn] (?>der |dem |den )?(.+) zu[mr]? (?>der |dem |den )?(.+)[.?]?\z/i

    if satz.match(myMuster)

	satz = satz.chomp("?")
	satz = satz.chomp("!")
	
	
        myArray = satz.scan(myMuster)
   
    startpunkt = myArray[0]
    ziel = myArray[1]

   if schluessel.detect(startpunkt)
    
    puts startpunkt
    
    if schluessel.detect(ziel)
    puts ziel
    end
    return [myArray]    
   end
 end
end	
end
end