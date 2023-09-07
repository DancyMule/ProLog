


        console.log("Inicio");
        var a=0;
        var b=1;
        var c=0;
        var i=0;
        var cadena = "";
        for(i=0;i<=100;i++){
        c=a+b;
        a=b;
        b=c;
        cadena = cadena+", "+a
        console.log("Vuelta "+i+": "+c);}
        console.log("Sucesion: "+cadena);


  