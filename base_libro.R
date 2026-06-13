# 1. Instalar el paquete de bookdown
install.packages("bookdown")

# 2. Crear los archivos de configuración YAML obligatorios
writeLines(c('book_filename: "mi_libro"', 'output_dir: "docs"'), "_bookdown.yml")
writeLines(c('bookdown::gitbook: default'), "_output.yml")

# 3. Crear el archivo "Maestro" (index.Rmd)
writeLines(c('---', 'title: "Mi Libro en Posit Cloud"', 'author: "Tu Nombre"', 'site: bookdown::bookdown_site', 'documentclass: book', '---', '', '# Introducción {-}', '', 'Este es el inicio de mi libro.'), "index.Rmd")

# 4. Crear tu primer capítulo
writeLines(c('# Mi primer capítulo', '', 'Aquí va el contenido de mi primer capítulo.', '', 'Puedes usar sintaxis Markdown normal aquí.'), "01-capitulo.Rmd")
