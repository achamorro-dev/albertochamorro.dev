---
title: Automatiza la instalación y configuración de tu máquina con dotfiles
description: ¿Tienes que cambiar de ordenador o formatear el tuyo? Imagina tenerlo configurado a golpe de click. ¡dotfiles al rescate!
img: https://res.cloudinary.com/dp1r5podd/image/upload/v1663751819/albertochamorro.dev/dotfiles/dotfiles_getvu8.webp
thumbnail: https://res.cloudinary.com/dp1r5podd/image/upload/c_scale,w_360/v1663751819/albertochamorro.dev/dotfiles/dotfiles_getvu8.webp
metaImg: https://res.cloudinary.com/dp1r5podd/image/upload/v1663751819/albertochamorro.dev/dotfiles/dotfiles_getvu8.jpg
alt: Cartel del artículo Automatiza la instalación y configuración de tu máquina con dotfiles donde aparece el título y un ícono de un engranaje
tags:
  - general
  - productividad
date: 2022-09-21
articleUrl: https://albertochamorro.dev/blog/automatiza-la-configuracion-de-tu-maquina-con-dotfiles
---

¿Alguna vez has querido formatear tu ordenador pero por pereza de tener que instalar todo de nuevo no lo haces? ¿Has cambiado de ordenador o te han dado uno nuevo en un trabajo y no terminas de tener la configuración a tu gusto o te faltan cosas? ¡dotfiles al rescate!

## dotfiles ¿eso qué es?

Te animo a que vayas a tu carpeta de usuario (también conocida como HOME) y muestres los archivos ocultos si no los ves por defecto. Si te pasa como a mí tendrás algo parecido a esto:

<img src="https://res.cloudinary.com/dp1r5podd/image/upload/v1663737397/albertochamorro.dev/dotfiles/Captura%20con%20los%20ficheros%20ocultos%20de%20mi%20directorio%20home.webp" alt="Captura de pantalla de mi directorio home de mi máquina donde se ven una gran cantidad de archivos ocultos que su nombre empieza por un punto" />

¿Has visto que cantidad de ficheros y directorios ocultos tenemos? **Los archivos ocultos en sistemas UNIX y sistemas basados en Linux se reconocen rápidamente por tener un `.` delante de su nombre** y una gran mayoría de aplicaciones y herramientas dejan este tipo de archivos en tu directorio HOME.

Por ejemplo, ¿has usado `git` alguna vez? ¿cuantas veces te ha pasado que has configurado de manera global tu email y tu nombre para el registro de commits? Pues eso deja un fichero oculto en tu HOME llamado `.gitconfig` con un contenido tal que así:

```
[user]
    name = Nombre Apellido
    email = correo@ejemplo.com
```

Gracias a estos ficheros surgió lo que se conoce como **dotfiles**.

dotfiles es la manera de tener guardada nuestra configuración para que, en caso de necesitarlo, configurar todo de nuevo rápidamente. El nivel de automatización y detalle de configuración al que quieres llegar depende de ti.

## Entonces, ¿que puedo hacer con dotfiles?

La respuesta es sencilla: todo lo que estes dispuesto a hacer. Si no quieres complicarte, puedes simplemente tener un repositorio de código en GitHub por ejemplo con los ficheros de configuración listos para descargar.

En caso de que quieras llevarlo un pasito más allá (cosa que te recomiendo totalmente) puedes automatizar cosas como: instalación de aplicaciones, configuración a nivel de sistema operativo, configuración de terminal, creación de tu workspace con descarga de repositorios básicos incluida, instalación de fuentes, temas y un largo etc.

Además la mayor parte de los usuarios que hemos creado nuestro repositorio de dotfiles tenemos nuestra **configuración pública**. ¿Qué quiere decir esto? Que puedes ir a mi repositorio de GitHub y ver que aplicaciones uso en mi día a día, que configuración de terminal tengo, si utilizo alias, como tengo configurado el teclado,... Puede que incluso veas vídeos de creadores de contenido y pienses: "me encantaría tener la terminal o el editor configurados igual". Pues si esa persona tiene dotfiles podrás, como mínimo, saber como configurarla.

Esto parece muy bonito ¿a que sí? Pues hay un pero...siempre hay un pero (bueno o tres). Existen ciertos aspectos importantes a tener en cuenta si quieres empezar a usar dotfiles:

- <u>La configuración inicial es pesada.</u> No te voy a engañar, empezar es duro. Hay herramientas que te ayudan en este proceso inicial pero aun así tienes que registrar todo lo que tienes en tu máquina así que mi consejo es: **mejor poco a poco** o al menos tómate un tiempo para hacerlo.

- <u>No dejes de actualizarlo.</u> Una vez has empezado el peor error que puedes cometer es no seguir actualizándolo. ¿Vas a instalar una aplicación nueva? Con dotfiles. ¿Quieres cambiar algo en tu configuración? Con dotfiles. Si empiezas a cambiar tu configuración sin tener en cuenta tu repositorio de dotfiles habrás perdido la batalla. Mi consejo: **siempre con dotfiles** a no ser que no quieras guardar esa configuración.

- <u>El mundo de los dotfiles es más grande que la Tierra Media.</u> Cada persona busca, como en otros aspectos de la vida, la forma que mejor se adapte a ella. Es por eso que verás de todo: desde repositorios donde simplemente guardan los ficheros de configuración y los mueven a mano hasta procesos automatizados hasta el más mínimo detalle de configuración con scripts y otras herramientas que ahora comentaremos.

## ¿Cómo lo hago yo?

Yo soy de los que prefiere tener todo lo más automatizado posible por eso utilizo una herramienta para ayudarme. Esta herramienta es un proyecto open source de la empresa en la que estoy actualmente y su nombre es `dotfiles` ¿ingenioso verdad? Te dejo el enlace por aquí:

<span><RepositoryCard href='https://github.com/autentia/dotfiles' description='Autentia does dotfiles. Automatize your whole machine setup easily.🔧' name='dotfiles' language='shell' /></span>

Esta herramienta funciona con git y está basada en plugins lo que quiere decir que puedes repartir tu configuración en diferentes plugins o repositorios y crear una configuración global con ellos.

Esto abre un mundo de posibilidades porque podrías partir tu configuración por tipología por ejemplo: básico, frontend, backend, diseño, ... Imagina que das servicios a diferentes clientes, pues podrías tener un plugin de dotfiles para cada uno de ellos y facilitar la configuración a nuevos compañeros. Ahora nos adentramos más en materia de plugins.

La instalación es muy sencilla y basta con ejecutar la siguiente instrucción:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/autentia/dotfiles/main/installer)"
```

Si todo ha ido bien, tendrás un nuevo comando en tu terminal. Puedes comprobar si funciona correctamente ejecutando:

```
❯ dotfiles version
dotfiles 0.7.0
```

También puedes ver la ayuda incluida ejecutando `dotfiles -h`.

## Como funciona la herramienta **dotfiles**

La herramienta sigue un flujo de instalación concreto cada vez que instalas o actualizas un plugin. Este flujo es el siguiente:

- **Instalación de binarios**: busca todos los archivos que existan en todas las carpetas con el nombre `bin` dentro de los plugins y crea enlaces simbólicos en `/usr/local/bin`.

- **Ejecución de scripts de instalación**: buscará por todas las carpetas los ficheros llamados `install.sh` y los ejecutará. Recuerda que estos ficheros deben tener los permisos de ejecución antes de subirlos al repositorio de tu plugin.

- **Creación de symlinks o enlaces en el directorio home**: todos los ficheros con extensión `.symlink` serán enlazados directamente en tu directorio home como fichero oculto. Por ejemplo, un fichero con el nombre `zshrc.symlink` creará un enlace simbólico en `HOME/.zshrc`.

- **Comprobación de la configuración de GIT**: en caso de que no exista te pedirá email y nombre para crear el fichero de configuración inicial.

Este flujo de instalación se ejecuta para todos los plugins que tengas en ese momento instalados. ¿Qué quiere decir esto? Quiere decir que todo lo que configures dentro de un plugin debe implementar las comprobaciones necesarias para no devolver errores en caso de volverse a ejecutar.

Por ejemplo, imagina que quieres clonar un repositorio de tu página personal en un directorio especifico y añades un script `install.sh` con el comando `git clone` de turno. La primera vez que instales el plugin no hay problema porque el repositorio aun no existe pero si lo lanzas una segunda vez el comando devolverá error porque ya existe. Por lo tanto deberías, antes de lanzar el comando de clonado, comprobar si ese directorio ya existe para hacer o no el clonado.

Sé que es un poco lioso de entender al principio pero poco a poco, según avances en la creación de tu plugin y lo actualices verás de lo que te estoy hablando.

### Creación de un plugin

Como te comentaba, `dotfiles` está pensado para trabajar con plugins por lo que, si no tienes un plugin creado con tu configuración, lo primero que tendrás que hacer es crear uno. Para ello puedes ejecutar el comando `create-plugin`.

Un ejemplo:

```
❯ dotfiles create-plugin dotfiles-plugin-ejemplo
  [ DEBUG ] Creating plugin dotfiles-plugin-ejemplo
Cloning into './dotfiles-plugin-ejemplo'...
remote: Enumerating objects: 35, done.
remote: Total 35 (delta 0), reused 0 (delta 0), pack-reused 35
Receiving objects: 100% (35/35), 10.10 KiB | 1.01 MiB/s, done.
Resolving deltas: 100% (3/3), done.
  [ OK ] Plugin dotfiles-plugin-ejemplo created successfully
```

Basado en un plugin template que se puede ver [en su repositorio de GitHub](https://github.com/autentia/dotfiles-plugin-template), el comando creará una carpeta con el nombre que hayamos indicado con la siguiente estructura de carpetas:

```
├─ bin   # Carpeta con comandos propios
├─ git   # Carpeta con configuración de git
├─ os    # Carpeta con configuración del sistema operativo
├─ zsh   # Carpeta con tu configuración de terminal
```

Cada una de estas carpetas son lo que llamaríamos topics o temas de tu configuración. Puedes crearte las carpetas que quieras en base a lo que quieras configurar, por ejemplo yo tengo una carpeta llamada "alacritty" con mi configuración del software de terminal que uso actualmente.

### Mi plugin de dotfiles

Para ayudarte un poco a empezar con tu configuración aquí te resumo lo que tengo en mi plugin:

- **alacritty**: configuración de mi terminal Alacritty y uso de starship para la shell

- **app-store**: instalación de aplicaciones de la App Store de Apple gracias al comando `mas`

- **flutter**: instalación y configuración de `fvm` (Flutter Version Manager), `very_good_cli` and `melos`

- **git**: configuración global de git propia y activación de algunos alias

-- **iterm**: instalación de mi tema favorito de iTerm y configuración de preferencias

-- **npm**: instalación de algunos paquetes globales de `npm`

-- **nvim**: instalación de mi configuración de `neovim`

-- **os**: instalación de aplicaciones gracias a `brew` y su fichero `Brewfile`, y configuración de ajustes a nivel de sistema operativo

-- **sdkman**: instalación y configuración del gestor de SDKs más famoso de Java

-- **tmux**: instalación del gestor de paquetes `tpm` para `tmux` y mi configuración

-- **zsh**: configuración de algunos alias propios, creación de mi directorio "workspace" y ficheros con extensión zsh que serán cargados automáticamente en mi `.zshrc` con diferentes ajustes y variables de entorno

Si quieres más información puedes ver el contenido de mi plugin aquí:

<span><RepositoryCard href='https://github.com/achamorro-dev/dotfiles-alberto-chamorro' description='Mi repositorio de dotfiles con toda mi configuración actual' name='dotfiles-alberto-chamorro' language='shell' /></span>

## Pero, ¿tengo que usar esta herramienta?

Respuesta rápida: no. Como he comentado al principio, la idea es que cada persona debe buscar el flujo que mejor se adapte a su flujo de trabajo. Existen más herramientas como [dotly](https://github.com/CodelyTV/dotly), [fresh](https://freshshell.com/) o [dotbot](https://github.com/anishathalye/dotbot) entre otros.

Si quieres más información sobre el maravilloso mundo de dotfiles te animo a echar un vistazo al repositorio [awesome-dotfiles](https://github.com/webpro/awesome-dotfiles).

---

Muchas gracias por llegar hasta el final y, si quieres modificar algo de este artículo, puedes hacerlo enviándome una PR editando [este fichero](https://github.com/achamorro-dev/albertochamorro.dev/blob/main/content/articles/automatiza-la-configuracion-de-tu-maquina-con-dotfiles.md).

¡Gracias por leer hasta aquí y hasta la próxima 👋!
