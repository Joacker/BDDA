import sys, os
from time import time

def clean(name, savein):
    Old = open(name,'r')
    New = open(savein+'/'+name+'fixed.txt','w')
    clientes = dict()

    for i in Old:
        curr = i.split(' | ')
        if ((len(curr[0]) <= 10) and (len(curr[1])<=50) and (len(curr[2]) <= 2) and (len(curr[3]) <= 101)):
            if (curr[0] not in clientes):
                clientes[curr[0]]=""
                New.write(",".join(curr))

    Old.close()
    New.close()

if __name__ == '__main__':
    while(len(os.listdir("./"))<5):
        if (len(os.listdir("./")) == 3):
            clean("millones50", os.getcwd())
        elif (len(os.listdir("./")) == 4):
            clean("cincomil",os.getcwd())
    start_time = time()
    clean("millones50", os.getcwd())
    elapsed_time = time() - start_time
    print(elapsed_time)
    '''Funcion usada para calcular el tiempo de filtrado (50 millones)
    para el caso de 5 mil, basta cambiar el nombre de la funcion clean)'''