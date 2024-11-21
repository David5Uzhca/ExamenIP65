EXAMEN UZHCA JUAN
1. CONTRUCCION DE IMAGEN DOCKER
    docker built -t <usuario>/<nombre_imagen> .
        docker build -t david5uzhca/examen_uzhcajuan .

2. EJECUCION DE IMGEN DOCKER
    docker run <puertos> <nombre_imagen>
    docker run 80:80 examen_uzhcajuan

3. MONTAR UN VOLUMEN 
    docker run -p 80:80 -v $(pwd)/examen_UzhcaJuan/dist:/var/www/html david5uzhca/examen_uzhcajuan