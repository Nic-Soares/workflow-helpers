#!/bin/bash

# Nome do diretório raiz do projeto (substitua pelo nome desejado)
PROJECT_NAME="web-design-showcase"

# Criar estrutura de diretórios
mkdir -p $PROJECT_NAME/public/assets/{css,images,fonts}
mkdir -p $PROJECT_NAME/src/{components,styles,js,pages}

# Criar arquivos essenciais
touch $PROJECT_NAME/public/index.html
touch $PROJECT_NAME/public/assets/css/style.css
touch $PROJECT_NAME/src/styles/main.scss
touch $PROJECT_NAME/src/js/app.js
touch $PROJECT_NAME/src/pages/about.html
touch $PROJECT_NAME/src/pages/contact.html
touch $PROJECT_NAME/.gitignore
touch $PROJECT_NAME/README.md
touch $PROJECT_NAME/LICENSE

# Adicionar conteúdo básico ao README.md
cat <<EOL > $PROJECT_NAME/README.md
# $PROJECT_NAME

## Description
This is a collection of web pages for a website showcase. It includes reusable components and a modular structure for scalability.

## Project structure
- **public/**: Contains the main static assets like images, fonts, CSS, and the main HTML.
- **src/**: Contains the source code, divided into components, styles, JavaScript, and additional pages.

## Setup
To get started with the project, clone the repository and start working on your HTML, CSS, and JavaScript inside the \`src/\` and \`public/\` directories.

## License
Include license information here.
EOL

# Adicionar conteúdo ao .gitignore
cat <<EOL > $PROJECT_NAME/.gitignore
# Node.js dependencies
node_modules/

# OS-specific files
.DS_Store

# Compiled CSS (if using SCSS)
public/assets/css/*.css.map
EOL

# Adicionar estrutura básica ao index.html
cat <<EOL > $PROJECT_NAME/public/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web Design Showcase</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <header>
        <h1>Welcome to the Web Design Showcase</h1>
    </header>
    <main>
        <section>
            <p>This is a demo page for showcasing web design skills.</p>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Web Design Showcase</p>
    </footer>
</body>
</html>
EOL

# Adicionar estilo básico ao style.css
cat <<EOL > $PROJECT_NAME/public/assets/css/style.css
/* Basic reset and styles */
body {
    margin: 0;
    font-family: Arial, sans-serif;
    line-height: 1.6;
}

header {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 1rem 0;
}

main {
    padding: 2rem;
}

footer {
    text-align: center;
    padding: 1rem 0;
    background-color: #333;
    color: white;
    position: fixed;
    width: 100%;
    bottom: 0;
}
EOL

# Mensagem de sucesso
echo "Estrutura de projeto '$PROJECT_NAME' criada com sucesso!"

