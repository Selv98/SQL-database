/*domanda1*/
Select *
From Romanzo
Where Romanzo.AnnoPubblicazione =2001

/*domanda2*/
Select *
From Romanzo
Where Romanzo.AnnoPubblicazione>=1990

/*domanda3*/
Select *
From Romanzo
Where AnnoPubblicazione>=1901 and AnnoPubblicazione<=2000

/*domanda4*/
Select Autore.Nome, Autore.Cognome, Romanzo.Titolo
From Autore, Romanzo
Where Autore=Autore.ID

/*domanda5*/
Select Autore.Nome, Autore.Cognome, Romanzo.Titolo
From Autore, Romanzo
Where Autore=Autore.ID 
order by Cognome, Nome

/*domanda6*/
Select Autore.Nome, Autore.Cognome, Romanzo.Titolo
From Autore, Romanzo
Where Autore=Autore.ID and Autore.Nazionalità="Italiana"
order by Autore.Cognome, Autore.Nome

/*domanda7*/
Select Romanzo.Titolo
From Romanzo, Autore
Where Autore=Autore.ID and Autore.DataNascita>=1901 and Autore.DataNascita<=2000
order by Autore.Nome, Autore.Cognome, Romanzo.AnnoPubblicazione

/*domanda8*/
Select Romanzo.Titolo, Romanzo.AnnoPubblicazione
From Romanzo, Autore 
Where Autore=Autore.ID and DataMorte is null and LuogoMorte is null

/*domanda9*/
Select Romanzo.*
From Romanzo, Autore 
Where Autore=Autore.ID AND (Autore.DataMorte is null OR  Autore.LuogoMorte !='Italia')

/*domanda10*/
Select Romanzo.Titolo, Romanzo.AnnoPubblicazione
From Romanzo, Autore
Where Autore=Autore.ID and Autore.LuogoNascita="Italia"

/*domanda11*/
Select *
From Romanzo 
Where Romanzo.Titolo like 'Tokyo%'

/*domanda12*/
Select *
From Romanzo
Where Romanzo.Titolo like '%sposi%'

/*domanda13*/
Select *
From Romanzo
Where Romanzo.Titolo like '%i_'

/*domanda14*/
Select *
From Romanzo
Where Romanzo.Titolo like '%paura'

/*domanda15*/
Select *
From Romanzo
Where Romanzo.AnnoPubblicazione>=1901 and Romanzo.AnnoPubblicazione<=2000 and Romanzo.Titolo like '%Zeno%'

/*domanda16*/
Select *
From Romanzo
Where Romanzo.AnnoPubblicazione<1900 and (Romanzo.Titolo like '%Sposi%' or Romanzo.Titolo like '%sposi%')

/*domanda17*/
Select *
From Romanzo, Autore
Where Autore=Autore.ID and Autore.Cognome = 'Manzoni' and Autore.Nome = 'Alessandro'

/*domanda18*/
Select distinct Romanzo.Titolo
From Romanzo, Autore
Where Autore=Autore.ID and Autore.Nome= 'Niccolò' and Autore.Cognome= 'Ammaniti'

/*domanda19*/
Select Romanzo.*
From Romanzo, Personaggio, PersonaggioRomanzo
Where PersonaggioRomanzo.Personaggio=Personaggio.ID and PersonaggioRomanzo.Romanzo=Romanzo.ID and Personaggio.Nome= 'Michele' and Personaggio.Cognome= 'Amitrano'

/*domanda20*/
Select *
From Romanzo, Autore
Where Autore=Autore.ID and Autore.Nome= 'Dante' and Autore.Cognome= 'Alighieri'