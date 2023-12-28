// Delta time = tempo que se passou entre o frame anterior e o frame atual
// Usamos o delta time para equivaler de acordo com o clock de cada máquina
// divisão por 1 milhão pois é executado em micro-segundos,então dessa forma
// o resultado será em segundos

powerUpTime -= delta_time/1000000;

