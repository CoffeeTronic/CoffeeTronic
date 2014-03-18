function eliminar(ele){
	var objeto=document.getElementById(ele);
	objeto.parentNode.removeChild(objeto);
}

function eliminarTo(ele){
	var objeto=document.getElementById(ele);
	objeto.innerHTML="GAME OVER";

}

//el padre es una cadenaa con el id del padre paa 
function crearVentanaR(padre,nomVentana){
	var cadena,vAux;
	
	if(!document.getElementById(nomVentana)){
		cadena='<center><div id="'+nomVentana+'"> <br><br><br><br>Yo me llamo ralph<br><br> <div id="dbtnCerrar" onmouseover="eliminar(\''+nomVentana+'\')"></div></div></center>';
		document.getElementById(padre).innerHTML += cadena;
	}
	else{
		vAux=nomVentana+1;
		if(!document.getElementById(vAux)){
			cadena='<center><div id="'+vAux+'"> <br><br><br><br>Yo me llamo ralph<br><br> <div id="dbtnCerrar" onmouseover="eliminar(\''+vAux+'\')"></div></div></center>';
			document.getElementById(padre).innerHTML += cadena;
		}
		else{
			vAux=nomVentana+2;
			if(!document.getElementById(vAux)){
				cadena='<center><div id="'+vAux+'"> <br><br><br><br>Yo me llamo ralph<br><br> <div id="dbtnCerrar" onmouseover="eliminar(\''+vAux+'\')"></div></div></center>';
				document.getElementById(padre).innerHTML += cadena;
			}
			else{
				vAux=nomVentana+3;
				if(!document.getElementById(vAux)){
					cadena='<center><div id="'+vAux+'"> <br><br><br><br>Yo me llamo ralph<br><br> <div id="dbtnCerrar" onmouseover="eliminar(\''+vAux+'\')"></div></div></center>';
					document.getElementById(padre).innerHTML += cadena;
				}
				else{
					if(!document.getElementById("dBart")){
						cadena='<div id="dBart" onclick="crearVentana(\'cen\',\'testBart\')"></div>';
						document.getElementById(padre).innerHTML += cadena;
						
					}
				}
			}
		}
	}
} 

function crearVentana(padre,nomVentana){
	var cadena;
	
	if(!document.getElementById(nomVentana)){
		cadena='<center><div id="'+nomVentana+'" onclick="eliminarTo(\'cen\')"></div></center>';//cen es el div del k kiero elimar todo
		document.getElementById(padre).innerHTML += cadena;
	}
} 

function generaCPU(){
	var cadena;
	//document.write("tu puta madre");
	if(!document.getElementById("ddCpu")){
		cadena='<div id="ddCpu" onmouseout="eliminar(\'ddCpu\')"> aqui se abla de la cpu</div>';//cen es el div del k kiero elimar todo
		document.getElementById('dCpu').innerHTML += cadena;
	}
	if(document.getElementById("ddMem")){
		eliminar("ddMem");
	}
}

function generaMem(){
	var cadena;
	//document.write("tu puta madre");
	if(!document.getElementById("ddMem")){
		cadena='<div id="ddMem" onmouseout="eliminar(\'ddMem\')">';//cen es el div del k kiero elimar todo
		cadena+='<div id="dddRam" class="opcion">Ram</div>';
		cadena+='<div id="dddHD"class="opcion">Disco duro</div></div>';
		document.getElementById('dMem').innerHTML += cadena;
	}
	if(document.getElementById("ddCpu")){
		eliminar("ddCpu");
	}
}


function eliminar(elemento){
	var obj;
	obj=document.getElementById(elemento);
	obj.parentNode.removeChild(obj);
}

function creaVentana(opcion){
	var cadena;
	
	switch(opcion){
		case 1: if(!document.getElementById("ventana1") && !document.getElementById("ventana2")){
					cadena='<div id="ventana1">';
					cadena+='<div id="x" onclick="eliminar(\'ventana1\')"></div>';
					cadena+='</div>';			
					document.getElementById("derecha").innerHTML += cadena;	
				}
				
				break;
		
		case 2: if(!document.getElementById("ventana2") && !document.getElementById("ventana1")){
					cadena='<div id="ventana2">';
					cadena+='<div id="x" onclick="eliminar(\'ventana2\')"></div>';
					cadena+='</div>';	
					document.getElementById("derecha").innerHTML += cadena;	
				}
				break;
	
	
	}
	
}