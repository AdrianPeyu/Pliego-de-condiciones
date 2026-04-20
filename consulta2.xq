declare namespace file = "http://expath.org/ns/file";

let $items :=
for $i in db:open("retroDB")//item
where $i/estado = 5
return
<article>
    <h2>{data($i/nombre)}</h2>
    <p>Estado: Menta</p>
</article>

let $html :=
<html lang="es">
<head><meta charset="UTF-8"/></head>
<body>
<header><h1>Objetos en Estado Perfecto</h1></header>
<main>{$items}</main>
</body>
</html>

return file:write(
"/home/usuario/retro-gaming-vault/output/menta.html",
$html,
map {
"method":"html",
"version":"5.0",
"omit-xml-declaration":"yes",
"encoding":"UTF-8"
}
)