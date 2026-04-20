# Retro-Gaming Vault (Museo del Píxel)

## Sistema de Información Dinámico con XML + XSD + XQuery

---

## 1. Descripción del proyecto

Retro-Gaming Vault es un sistema de información dinámico que simula la gestión de un museo de informática clásica.

El objetivo es transformar datos estructurados en XML en páginas web HTML generadas automáticamente mediante consultas XQuery ejecutadas en BaseX.

Este sistema no es una web estática, sino un sistema basado en datos donde:

- Los datos se almacenan en XML
- Se validan con un esquema XSD
- Se consultan con XQuery
- Se transforman en HTML dinámico

---

## 2. Tecnologías utilizadas

- XML (almacenamiento de datos)
- XSD (validación de estructura)
- XQuery (consultas y transformación)
- BaseX (motor de procesamiento XML)

---

## 3. Estructura del proyecto
retro-gaming-vault/
│
├── data/
│ ├── retro.xml # Datos del museo
│ └── retro.xsd # Esquema de validación
│
├── xquery/
│ ├── consulta1.xq # Hardware antes de 1985
│ ├── consulta2.xq # Objetos en estado 5
│ └── consulta3.xq # Certificado por serial
│
├── output/
│ ├── catalogo.html
│ ├── menta.html
│ └── certificado.html

---

## 4. Cómo ejecutar el proyecto

### Paso 1: Abrir BaseX
Abrir el programa BaseX (XML Database Engine).

---

### Paso 2: Ejecutar consultas

Se pueden ejecutar de dos formas:

#### Opción recomendada (simple)
Usando rutas directas con `doc()`:

```xquery
doc("C:/ruta/retro-gaming-vault/data/retro.xml")
