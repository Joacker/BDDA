# USAGE

** *comando para eliminar los datos repetidos del archivo* **
```bash
    cat diezmil.txt | sort | uniq > diezmil fixed.txt
```

*comando que elimina el rut correspondiente al car´acter ‘‘V’’*
*realizando un salto de linea al encontrarlo.*
```bash
    sed ’/V/d’ -i diezmil
```

*comando para cambiar permisos del archivo*
```bash
    chmod 746 savep1.txt
```