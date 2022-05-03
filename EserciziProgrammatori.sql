/* Query 1 */
select Programmatore.codice
from Autore join Programmatore on Autore.codice= Programmatore.codice
    join Programma  on Autore.id=Programma.id
where Programma.linguaggio="Java" and Programma.anno>=2000

/* Query 2 */
select Programmatore.nome, Programmatore.categoria
from Autore join Programmatore on Autore.codice= Programmatore.codice
    join Programma  on Autore.id=Programma.id
where Programma.linguaggio != "Python" 
order by Programmatore.nome

/* Query 3 */
select Programmatore.codice, Programma.anno
from Autore join Programmatore on Autore.codice= Programmatore.codice
    join Programma  on Autore.id=Programma.id
where Programmatore.categoria= 10 and Programma.linguaggio != "Java"
group by Programmatore.codice

/* Query 5 */
select Programmatore.codice, programmatore.nome
from Autore join Programmatore on Autore.codice= Programmatore.codice
    join Programma  on Autore.id=Programma.id
where Programma.linguaggio= "Java"
