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

/* Query 4 */
Select distinct a1.codice as program1, a2.codice as program2
from Programma join Autore a1 on Programma.id= a1.id
    join Autore a2 on Programma.id= a2.id
where Programma.linguaggio= "Python" and a1.codice != a2.codice and a1.codice > a2.codice

/* Query 5 vecchia */
select Programmatore.codice, programmatore.nome
from Autore join Programmatore on Autore.codice= Programmatore.codice
    join Programma  on Autore.id=Programma.id
where Programma.linguaggio= "Java"

/* Query 5 nuova */
select Programmatore.codice, programmatore.nome
from Autore join Programmatore on Autore.codice= Programmatore.codice
    join Programma  on Autore.id=Programma.id
where Programma.linguaggio in 
    (select Programma.linguaggio
        from Programma 
        where programma.linguaggio = "java")

/* Query 6 */
select Autore.codice, Programma.anno, count(Programma.id)
from Autore join Programmatore on Autore.codice= Programmatore.codice
    join Programma  on Autore.id=Programma.id
group by Autore.codice, Programma.anno

/* Query 7 */
select Programma.linguaggio,count(Autore.codice/Programma.id)
from Autore join Programmatore on Autore.codice= Programmatore.codice
    join Programma  on Autore.id=Programma.id
group by Programma.linguaggio
