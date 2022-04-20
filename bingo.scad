include <strings.scad>

numeros = [ "3/2",
            "1/5",
            "15/100",
            "3/10",
            "5/4",
            "1/2",
            "1/4",
            "3/4",
            "34/10",
            "3/100",
            "17/10",
            "94/10",
            "3/1000",
            "94/100",
            "17/100",
            "305/10",
            "305/100",
            "305/1000",
            "9/10",
            "9/100",
            "9/1000",
            "48/10",
            "48/1000",
            "408/100",
            "35/10",
            "83/1000",
            "803/100"];

altura = 10;
radio = 10;
altura_numero = 0.4; 
 	
module ficha (x, y, numero) {
    numerador = split(numero, "/")[0];
    denominador = split(numero, "/")[1]; 
    
    color("lightblue") {
        translate([x, y, 0]) {
            cylinder(altura,radio,radio,$fn = 90);
        }
    }

    color("white") {
        translate ([x, y + 1, altura]){
            linear_extrude(altura_numero)
                text(numerador,
                    size = radio/2,
                    font = "arial",
                    halign = "center",
                    valign = "bottom");
        }
        
        translate ([x, y -1, altura]){
            linear_extrude(altura_numero)  
                text(denominador,
                    size = radio/2,
                    font = "arial",
                    halign = "center",
                    valign = "top");
        }

        translate ([x + (radio - 1) * -1, y -0.5, altura]){
            cube([(radio*2)-2, 1, altura_numero]);
        }
    }
    
}

// TEST 
// ficha(0, 0, "305/1000");


gap=5;
tot_size=radio*2+ gap;
tot_row = tot_size * len(numeros);

max_count = 150/tot_size;

for(col = [0:1:max_count-1]) {
    for(row = [0:1:max_count-1]) {
       num = numeros[(col*max_count)+row];
       
       if (!is_undef(num)) {
         ficha(row*tot_size, col*tot_size, num);
       }
    }
}
