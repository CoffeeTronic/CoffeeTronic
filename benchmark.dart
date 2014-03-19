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
     * @brief Función que realiza la diferencia entre dos horas
     * @param d1 Datetime con la hora antes de ejecutar el benchmark
     * @param d2 Datetime con la hora después de ejecutar el benchmark
     * @return Retorna un DateTime resultante de la recta de d1 y d2
  */
  DateTime SubstraerTiempos(DateTime d1, DateTime d2){
    DateTime nuevo  = new DateTime((d1.year-d2.year), (d1.month-d2.month), (d1.day-d2.day), (d1.hour-d2.day), (d1.minute-d2.minute), (d1.second-d2.second), (d1.millisecond-d2.millisecond));
    return nuevo;
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
    
    tTotal = SubstraerTiempos(tAntes, tDespues);
        
    return tTotal;
  }
  
  
  /*
   * @brief Función que hará el benchmark a la memoria
   * @return Retorna un DateTime con el tiempo que ha tardado en ejecutar los comandos de la memoria
  */
  DateTime Memoria(){
    DateTime tTotal;
    int ejecuciones = 1000000;
    Random r = new Random();
    
    tAntes = Time();
    
    //Parte que aumenta la memoria RAM
    
    tDespues = Time();
    
    tTotal = SubstraerTiempos(tAntes, tDespues);
        
    return tTotal;
  }
  
  
  /*
   * @brief Función que hará el benchmark los graficos
   * @return Retorna un DateTime con el tiempo que ha tardado en ejecutar la parte grafica
  */
  DateTime Graficos(){
    DateTime tTotal;
    int ejecuciones = 1000000;
    Random r = new Random();
    
    tAntes = Time();
    
    //Parte que aumenta la grafica
    
    tDespues = Time();
    
    tTotal = SubstraerTiempos(tAntes, tDespues);
        
    return tTotal;
  }
  
  /*
   * @brief 
  */
  DateTime Global(){
    DateTime tTotal;
    int ejecuciones = 1000000;
    Random r = new Random();
    
    tAntes = Time();
    
    //Código
    
    tDespues = Time();
    
    tTotal = SubstraerTiempos(tAntes, tDespues);
        
    return tTotal;
  }
  
  
}
