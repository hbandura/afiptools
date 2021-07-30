#!/bin/bash
TOTAL=$((0))
for i in {1..12};
do
   M=`date -v${MES}m -v${ANO}y -v1d -v+1m -v-${i}m "+%m"`
   Y=`date -v${MES}m -v${ANO}y -v1d -v+1m -v-${i}m "+%Y"`
   echo "Buscando total para $M/$Y..."
   SUBTOTAL=`MES=$M ANO=$Y ./totalmes.sh`
   echo " $SUBTOTAL"
   TOTAL=$(awk "BEGIN {print $TOTAL+$SUBTOTAL; exit}")
done
echo "Total: $TOTAL"
