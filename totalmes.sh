
DESDE=`date -v${MES}m -v${ANO}y -v1d "+%d/%m/%Y"`
HASTA=`date -v${MES}m -v${ANO}y -v1d -v+1m -v-1d "+%d/%m/%Y"`
ID=`./generar.sh | jq -r '.datos.idConsulta'`
ID=$ID ./listar.sh | jq '[.datos.data[] | {d:.[0],c:.[14],v:.[23]} | .v | tonumber] | add'

