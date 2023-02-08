rm ../memoria/memoria.config
rm ../cpu/cfg/cpu.config
rm ../kerner/kernel.config
rm ../consola/consola.config

echo "IP_KERNEL=192.168.3.230
PUERTO_KERNEL=8000" > ../consola/consola.config

echo "PUERTO_ESCUCHA=8002
TAM_MEMORIA=2048
TAM_PAGINA=256
ENTRADAS_POR_TABLA=4
RETARDO_MEMORIA=1000
ALGORITMO_REEMPLAZO=CLOCK-M
MARCOS_POR_PROCESO=3
RETARDO_SWAP=5000
PATH_SWAP=../swap" > ../memoria/memoria.config

echo "ENTRADAS_TLB=1
REEMPLAZO_TLB=LRU
RETARDO_NOOP=1000
IP_MEMORIA=192.168.3.232
PUERTO_MEMORIA=8002
PUERTO_ESCUCHA_DISPATCH=8001
PUERTO_ESCUCHA_INTERRUPT=8005" > ../cpu/cfg/cpu.config

echo "IP_MEMORIA=192.168.3.232
PUERTO_MEMORIA=8002
IP_CPU=192.168.3.236
PUERTO_CPU_DISPATCH=8001
PUERTO_CPU_INTERRUPT=8005
PUERTO_ESCUCHA=8000
ALGORITMO_PLANIFICACION=FIFO
ESTIMACION_INICIAL=20000
ALFA=0.5
GRADO_MULTIPROGRAMACION=2
TIEMPO_MAXIMO_BLOQUEADO=5000" > ../kerner/kernel.config
