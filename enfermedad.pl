%definir el hecho la enfermedad
%...sintomas
%...medicamentos
%...tratamiento
%...receta
% nombres:

%S�ntomas de la gripe (ampliados)
sintoma(gripe, fiebre).
sintoma(gripe, escalofrios).
sintoma(gripe, tos).
sintoma(gripe, dolor_de_cabeza).
sintoma(gripe, fatiga).
sintoma(gripe, dolores_musculares).
sintoma(gripe, dolor_de_garganta).
sintoma(gripe, congestion_nasal).
sintoma(gripe, estornudos).
sintoma(gripe, nauseas). % M�s com�n en ni�os
sintoma(gripe, vomitos). % M�s com�n en ni�os

% Hechos: Medicamentos para la gripe
medicamento(gripe, ibuprofeno).
medicamento(gripe, paracetamol).
medicamento(gripe, antigripal).

% Hechos: Tratamiento (acci�n de recetar)
tratamiento(gripe, recetar).

% Reglas y consultas

% Consulta 1: �Es X un s�ntoma de la gripe?
es_sintoma_de_la_gripe(Sintoma) :-
    sintoma(gripe, Sintoma),
    write(Sintoma), write(' es un s�ntoma de la gripe.'), nl.

% Consulta 2: �Cu�les son los s�ntomas de la gripe?
cuales_son_los_sintomas_de_la_gripe :-
    write('Los s�ntomas de la gripe son:'), nl,
    sintoma(gripe, Sintoma),
    write('- '), write(Sintoma), nl,
    fail.
cuales_son_los_sintomas_de_la_gripe.

% Consulta 3: �Paracetamol es medicina de qu�?
es_medicina_de_que(Medicamento) :-
    medicamento(Enfermedad, Medicamento),
    write(Medicamento), write(' es un medicamento para la '), write(Enfermedad), write('.'), nl.

% Consulta 4: �Qu� medicamentos existen para la gripe?
que_medicamentos_existen_para_la_gripe :-
    write('Los medicamentos para la gripe son:'), nl,
    medicamento(gripe, Medicamento),
    write('- '), write(Medicamento), nl,
    fail.
que_medicamentos_existen_para_la_gripe.
