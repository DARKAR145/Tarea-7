use torneo_videojuego;
create view Total_Muertes as select ID_Jugador, scores.Total_Deaths from scores inner join scores2 on scores.ID_Jugador=scores2.ID_JugadorS2;
select * from Total_Muertes;

create view Fallecidos as select ID_Jugador, scores.Total_Kills from scores left join scores2 on scores.Total_Kills = scores2.Total_Kills order by scores.Total_Kills;
select * from Fallecidos;

create view Racha as
select scores.ID_Jugador, scores2.Highest_Streak from scores right join scores2 on scores.ID_Jugador=scores2.ID_JugadorS2 order by scores.ID_Jugador;
select * from Racha;

create view Ratio_Positivo as select * from scores where ratio=1;
select * from Ratio_Positivo;

create view Assist as select * from scores where ratio=1 and Assists>30;
select * from Assist;