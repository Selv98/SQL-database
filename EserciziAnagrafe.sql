/* query1 */
select Persona.Nome, Città.Regione
from Persona join Città on Persona.CittàNascita=Città.Nome
where Persona.Età>=18

/* query2 */
select Genia.*
from Genia join Persona PG on Genia.Genitore= PG.Nome
    join Persona PF on Genia.Figlio= PF.Nome
Where PG.CittàNascita = PF.CittàNascita

/* query3 */
select Città.Nome
From Città join Persona on Persona.CittàNascita=Città.Nome 
where Persona.Età>=50