/* query1 */
select Persona.Nome, Città.Regione
from Persona join Città on Persona.CittàNascita=Città.Nome
where Persona.Età>=18

/* query3 */
select Città.Nome
From Città join Persona on Persona.CittàNascita=Città.Nome 
where Persona.Età>=50