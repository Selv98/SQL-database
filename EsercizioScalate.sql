/* Query 1 */
select Scalata.Scalatore, Scalata.Nazione
from Scalata join Scalatore on Scalata.Scalatore= Scalatore.CF
    join Nazione on Scalata.Nazione= Nazione.nome

/* Query 2 */
select distinct Scalatore.CF,Nazione.continente
from Scalata join Scalatore on Scalata.Scalatore= Scalatore.CF
    join Nazione on Scalata.Nazione= Nazione.nome
where Scalatore.annoNascita<1980
group by Scalatore.CF, Nazione.continente
order by Nazione.continente

/* Query 4 */
select Nazione.nome, count(Scalata.Scalatore) as TotScalate
from Scalata join Scalatore on Scalata.Scalatore= Scalatore.CF
    join Nazione on Scalata.Nazione= Nazione.nome
where Scalata.Nazione= Scalatore=nazioneNascita
group by Nazione.nome