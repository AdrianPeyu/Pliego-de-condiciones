declare namespace file = "http://expath.org/ns/file";

let $serial := "C64-001"

let $item :=
db:open("retroDB")//item[serial = $serial]

let $html :=
<html lang="es">
<head>
<meta charset="UTF-8"/>
<title>Certificado</title>
</head>
<body>

<header><h1>Certificado de Autenticidad</h1></header>

<main>
<section>
<h2>{data($item/nombre)}</h2>
<p>Serial: {data($item/serial)}</p>
<p>Año: {data($item/anio)}</p>
<p>{data($item/descripcion)}</p>
</section>
</main>

</body>
</html>

return file:write(
"/home/usuario/retro-gaming-vault/output/certificado.html",
$html,
map {
"method":"html",
"version":"5.0",
"omit-xml-declaration":"yes",
"encoding":"UTF-8"
}
)