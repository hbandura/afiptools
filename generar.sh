curl -s \
	-H "Cookie: $COOKIE" \
	--data-urlencode "fechaEmision=${DESDE} - ${HASTA}" \
	--data-urlencode "tiposComprobantes=" \
	--data-urlencode "f=generarConsulta" \
	--data-urlencode "t=E" \
	https://serviciosjava2.afip.gob.ar/mcmp/jsp/ajax.do
