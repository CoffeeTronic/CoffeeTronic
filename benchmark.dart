/*
 * Clases y funciones para el benchmark
 * @author Daniel Barbeitos Carrillo 
*/

import 'dart:core';
import 'dart:math';

class Benchmark{
  //Variables para controlar el tiempo antes y despues de las diferentes pruebas hardware del sistema.
  DateTime tAntes, tDespues;
  
  /*
   * @brief Función que calcula la hora actual
   * @return Retorna un DateTime con la hora actual cuando se ha creado el objeto
   */
  DateTime Time(){
    DateTime ahora = new DateTime.now();
    return ahora;
  }
  
  /*
   * @brief Función que hará el benchmark al procesador
   * @return Retorna un DateTime con el tiempo que ha tardado en ejecutar los comandos el procesador
   */
  DateTime Procesador(){
    DateTime tTotal;
    int ejecuciones = 1000000;
    Random r = new Random();
    
    tAntes = Time();
    
    //Esta parte no sabia bien que poner
    for(int i=0; i<ejecuciones; i++){
      i*r.nextInt(ejecuciones);
    }
    
    tDespues = Time();
    
    tTotal = tAntes.subtract(tDespues);
    
    return tTotal;
  }
  
  
}
