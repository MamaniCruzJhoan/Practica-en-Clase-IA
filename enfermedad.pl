%definir el hecho la enfermedad
%...sintomas
%...medicamentos
%...tratamiento
%...receta
% nombres:

%Síntomas de la gripe 
sintoma(gripe, fiebre).
sintoma(gripe, escalofrios).
sintoma(gripe, tos).
sintoma(gripe, dolor_de_cabeza).
sintoma(gripe, fatiga).
sintoma(gripe, dolores_musculares).
sintoma(gripe, dolor_de_garganta).
sintoma(gripe, congestion_nasal).
sintoma(gripe, estornudos).
sintoma(gripe, nauseas). % Más común en niños
sintoma(gripe, vomitos). % Más común en niños

% Hechos: Medicamentos para la gripe
medicamento(gripe, ibuprofeno).
medicamento(gripe, paracetamol).
medicamento(gripe, antigripal).

% Hechos: Tratamiento (acción de recetar)
tratamiento(gripe, recetar).

% Reglas y consultas

% Consulta 1: ¿Es X un síntoma de la gripe?
es_sintoma_de_la_gripe(Sintoma) :-
    sintoma(gripe, Sintoma),
    write(Sintoma), write(' es un síntoma de la gripe.'), nl.

% Consulta 2: ¿Cuáles son los síntomas de la gripe?
cuales_son_los_sintomas_de_la_gripe :-
    write('Los síntomas de la gripe son:'), nl,
    sintoma(gripe, Sintoma),
    write('- '), write(Sintoma), nl,
    fail.
cuales_son_los_sintomas_de_la_gripe.

% Consulta 3: ¿Paracetamol es medicina de qué?
es_medicina_de_que(Medicamento) :-
    medicamento(Enfermedad, Medicamento),
    write(Medicamento), write(' es un medicamento para la '), write(Enfermedad), write('.'), nl.

% Consulta 4: ¿Qué medicamentos existen para la gripe?
que_medicamentos_existen_para_la_gripe :-
    write('Los medicamentos para la gripe son:'), nl,
    medicamento(gripe, Medicamento),
    write('- '), write(Medicamento), nl,
    fail.
que_medicamentos_existen_para_la_gripe.
