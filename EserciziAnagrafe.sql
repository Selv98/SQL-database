/* query1 */
select Persona.Nome, Città.Regione
from Persona join Città on Persona.CittàNascita=Città.Nome
where Persona.Età>=18