var muestra;
function makeArray(n){
    this.length = n;
    for (i = 1; i <= n; i++) {
        this[i] = 0;
    }
    return this;
}

function Muestrafecha(){
    //arreglo de los meses
    var meses = new makeArray(12);
    meses[0] = "Enero";
    meses[1] = "Febrero";
    meses[2] = "Marzo";
    meses[3] = "Abril";
    meses[4] = "Mayo";
    meses[5] = "Junio";
    meses[6] = "Julio";
    meses[7] = "Agosto";
    meses[8] = "Septiembre";
    meses[9] = "Octubre";
    meses[10] = "Noviembre";
    meses[11] = "Deciembre";

    //arreglo de los dias
    var dias_de_la_semana = new makeArray(7);
    dias_de_la_semana[0] = "Domingo";
    dias_de_la_semana[1] = "Lunes";
    dias_de_la_semana[2] = "Martes";
    dias_de_la_semana[3] = "Mi&eacutercoles";
    dias_de_la_semana[4] = "Jueves";
    dias_de_la_semana[5] = "Viernes";
    dias_de_la_semana[6] = "S&aacutebado";

    var today = new Date();
    var day = today.getDate();
    var month = today.getMonth();
    var year = today.getYear();
    var dia = today.getDay();
    if (year < 1000) {
        year += 1900;
    }

    // mostrar la fecha
    return ("" + dias_de_la_semana[dia] + ", " + day + " de " + meses[month] + " de " + year);
}