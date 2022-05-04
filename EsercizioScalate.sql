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

/* Query 6 */
select Scalatore.CF, Scalatore.nazioneNascita, Nazione.continente as ContinenteNascita, Scalata.nazione as nazioneScalata
from Scalata join Scalatore on Scalata.Scalatore= Scalatore.CF
    join Nazione on Scalata.Nazione= Nazione.nome
where Nazione.continente != "America" and Scalata.Scalatore is not null

/* Query 7 */
select Scalata.nazione,Nazione.continente, Scalata.anno, count (Scalata.scalatore)
from Scalata join nazione on Scalata.nazione= nazione.nome
group by scalata.nazione, scalata.anno
having count(Scalata.scalatore) > 1
order by scalata.anno

/* Query 8 */
select Scalata.nazione, count(Scalata.scalatore)/Scalata.anno as media
from Scalata join Scalatore on scalata.scalatore=Scalatore.cf
where scalatore.nazioneNascita != Scalata.nazione
group by Scalata.nazione