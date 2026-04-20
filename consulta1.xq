declare namespace file = "http://expath.org/ns/file";

let $items :=
for $i in db:open("retroDB")//item
where $i/tipo = "Hardware" and $i/anio < 1985
return
<article>
    <h2>{data($i/nombre)}</h2>
    <p>Año: {data($i/anio)}</p>
    <p>Estado: {data($i/estado)}</p>
</article>

let $html :=
<html lang="es">
<head>
<meta charset="UTF-8"/>
<title>Catálogo Retro</title>
</head>
<body>
<header><h1>Museo del Pixel</h1></header>

<main>{$items}</main>

<footer><p>Retro Gaming Vault</p></footer>
</body>
</html>

return file:write(
"/home/usuario/retro-gaming-vault/output/catalogo.html",
$html,
map {
"method":"html",
"version":"5.0",
"indent":"yes",
"omit-xml-declaration":"yes",
"encoding":"UTF-8"
}
)