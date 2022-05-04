/* Query 1 */
select Scalata.Scalatore, Scalata.Nazione
from Scalata join Scalatore on Scalata.Scalatore= Scalatore.CF
    join Nazione on Scalata.Nazione= Nazione.nome