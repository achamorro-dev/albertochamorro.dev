---
title: Instalando Flutter 2 de manera segura con FVM
description: Cada vez trabajamos en más proyectos y no todos ellos funcionan con la misma versión de Flutter. Por eso, usar herramientas como FVM es cada vez más recomendable.
img: https://res.cloudinary.com/dp1r5podd/image/upload/v1626071430/albertochamorro.dev/instalando_flutter_2_con_fvm_qaxvzk.webp
thumbnail: https://res.cloudinary.com/dp1r5podd/image/upload/c_limit,h_180,w_360/v1626071430/albertochamorro.dev/instalando_flutter_2_con_fvm_qaxvzk.webp
alt: Cartel del artículo instalando Flutter 2 con FVM
tags:
  - flutter
  - multiplataforma
date: 2021-05-15
---

En Marzo de este año se presentó nueva versión de Flutter: Flutter 2. Esta versión trae bastantes funcionalidades nuevas a su versión estable, una de ellas el famoso “Null Safety”. Esto provoca que no todas las aplicaciones que funcionaban en la versión 1.x van a funcionar en su versión 2, más aún si tienes un número alto de dependencias y estas no han migrado su código todavía.

Es por eso que la herramienta FVM (Flutter Version Management) se hace cada vez más indispensable.

## ¿Qué es FVM?

Tal cual se define en su repositorio de Github, FVM es un CLI para manejar diferentes versiones del SDK Flutter.

Si tienes Flutter instalado en tu ordenador sabes que puedes saltar entre los diferentes channels (master, dev, beta o stable) pero cuando quieres ir a una versión específica en uno de esos channels se hace más complejo. Esto es lo que viene a solucionar FVM.

<blockquote>Con FVM podrás cambiar entre versiones de Flutter de una manera rápida y sencilla en pocos pasos.</blockquote>

## Instalación

Para realizar la instalación lo primero que necesitaremos es instalar Dart en local, si es que aún no lo tienes.

### Instalando Dart

Recomiendo utilizar un gestor de paquetes dependiendo del sistema operativo que tengas. Para Windows lo recomendable es usar Chocolatey y para macOS el más extendido sigue siendo Homebrew; si estás usando Linux sabrás que trae su propio gestor de paquetes así que ahí no me meto 😇.

Una vez tengamos el gestor de paquetes oportuno tendremos que lanzar el comando de instalación de Dart en tu terminal de confianza.

<div class="flex flex-col md:flex-row justify-evenly">
  <img src="https://miro.medium.com/max/548/1*24rWBuNPltmSrsvs-5yksg.png" alt="Instalación de dart en Windows con Chocolatey">
  <img src="https://miro.medium.com/max/530/1*IHVdcfDC4uHDum-IBfp9fA.png" alt="Instalación de dart en macOS con Homebrew">
</div>

Ahora sólo nos quedaría comprobar que la instalación ha ido bien lanzando el comando ```dart --version```

<img src="https://miro.medium.com/max/1450/1*immEBgOeW6bvBK7DGraspA.png" alt="Comprobación de la versión de Dart">

### Instalando FVM

Una vez tengamos Dart instalado y funcionando, instalar FVM es muy sencillo, simplemente tendremos que ejecutar el siguiente comando:

```
pub global activate fvm
```

<img src="https://miro.medium.com/max/1030/1*B7uWJL3QpMzXEBS_h3i8dA.png" alt="Ejemplo de salida al instalar fvm">

Si todo ha ido bien al final tendréis que tener el siguiente mensaje:

<img src="https://miro.medium.com/max/792/1*iUpsOcv-Yu8DQHRAoonueQ.png" alt="Resultado del comando de instalación de FVM">

Y si lanzamos el comando fvm podremos ver la ayuda del CLI:

<img src="https://miro.medium.com/max/1102/1*TwJR77y4QqgqmOr6Z44mhg.png" alt="Salida del comando fvm">

💪 ¡Bien hecho! Ahora vamos a ver cómo usarlo.

## Uso de FVM

Vamos a revisar los comandos que podemos usar con el CLI y que hace cada uno:

* **config**: podremos configurar el path donde FVM guardará las versiones de Flutter
* **flutter**: podrás ejecutar el comando de Flutter a través de FVM
* **install**: podrás instalar cualquier channel o versión de Flutter que le indiques a FVM
* **list**: podrás listar todas las versiones de Flutter que ya tienes descargadas
<img src="https://miro.medium.com/max/744/1*CRFZinI5o-faoqfgO4t56Q.png" alt="Ejemplo de salida de fvm list">

* **releases**: se imprime un listado de todas las posibles versiones de Flutter disponibles para instalar/usar
<img src="https://miro.medium.com/max/792/1*E0aNe-XRSmvJom38zY73bg.png" alt="Ejemplo de salida de fvm releases">

* **remove**: se eliminará de tu ordenador la versión que le indiques
* **use**: cambiará a la versión de Flutter que le indiques
* **version**: imprimirá la versión de FVM que tienes instalada

Lo más recomendable para no romper nada es ver que versión tienes del SDK instalado ahora mismo y hacer el cambio para que sólo FVM maneje Flutter, así que vamos a ello.

## Cambiando tu instalación de Flutter local a FVM
Ahora mismo seguramente tengas una versión de Flutter ya instalada así que lo más recomendable es instalar esa misma versión y cambiar tu IDE para que utilice la versión manejada por FVM.

Para ello primero veremos que versión de Flutter tenemos con el comando ```flutter --version```

<img src="https://miro.medium.com/max/1336/1*G6WhRB0ZZxr4uKenI6upCQ.png" alt="Versión local de Flutter">

En mi caso tendría que instalar la versión **1.26.0–17.5.pre** así que vamos a ello.

<img src="https://miro.medium.com/max/1362/1*ZvdBNBMWiWekB7EORkEd4g.png" alt="Instalando una versión específica de Flutter con FVM">

Una vez instalada tendremos que marcarla para su uso global. Eso lo conseguiremos utilizando el comando ```fvm use``` con el parámetro global.

<img src="https://miro.medium.com/max/1346/1*RVnR4vVclpZBP1HWmP0I8w.png" alt="Utilizando una versión de Flutter específica de manera global">

Para que este cambio tenga efecto deberemos modificar nuestra variable PATH del sistema, eliminando la ruta con la instalación antigua e incluyendo la ruta propia de FVM.

<q>La variable PATH es una variable del sistema con el listado de rutas o directorios donde el sistema operativo debe buscar los comandos. En caso de que varios directorios tengan el comando a ejecutar el sistema operativo utilizará siempre el primero.</q>

Por lo general, si no lo hemos modificado con la opción config, FVM instala las versiones globales en: <directorio raíz del usuario>/fvm/default/bin

En mi caso que estoy usando macOS y mi SHELL es “zsh” tengo que cambiar el valor de la variable PATH en el fichero $HOME/.zshrc

<img src="https://miro.medium.com/max/4800/1*oWJ7ncXyJuEbEZBI6xbbZg.png" alt="A la izquierda la ruta de mi instalación anterior. A la derecha nuevo valor utilizando FVM">

<blockquote>Puede que en tu caso utilices otra SHELL diferente a la mía y el fichero sea diferente (por ejemplo para “bash” el fichero sería $HOME/.bashrc). En caso de ser Windows deberéis de ir a variables de entorno en el panel de control o pulsando la tecla Windows y buscando “Variables de entorno”.</blockquote>

Una vez modificado el valor de la variable PATH y abierto una nueva ventana de la terminal para que coja el nuevo valor (o ejecutando el comando source $HOME/.zshrc para refrescar la sesión actual) ya podremos usar en la terminal la versión de Flutter descargada por FVM.

Ahora faltaría modificar la configuración de nuestro IDE favorito para poder usar la versión de FVM.

En VS Code (que es el que uso yo) podemos establecer el valor para la propiedad “dart.flutterSdkPaths” para indicarle la ruta que utilizará para ejecutar Flutter. Esta propiedad es un array, luego veremos qué podemos hacer con ella 🧐.

<img src="https://miro.medium.com/max/1320/1*X7qhOG8DTBhxwfZaLzQVNQ.png" alt="Configuración del path de Flutter en VS Code">

Si estáis usando Android Studio/IntelliJ, deberéis ir a Preferencias -> Lenguajes y Frameworks -> Flutter (o buscar Flutter en la caja de búsqueda) y cambiar el valor de “Flutter SDK path” por la ruta de FVM:


<img src="https://miro.medium.com/max/4004/1*il5tJpy46aQ0auBT7qp3gQ.png" alt="Cambiado el path de Flutter usando FVM">

🎉 Con estos cambios ya estaríamos utilizando la misma versión de Flutter que teníamos antes pero con FVM. Pero, ¿qué pasa si tengo diferentes proyectos con diferentes versiones de Flutter? Vamos a verlo.

## Utilizando diferentes versiones de Flutter por proyecto

Hasta ahora hemos visto cómo usar FVM con una versión especifica de Flutter pero esto puede ir más allá.

La verdadera utilidad de FVM llega cuando tenemos varios proyectos y algunos de ellos no son compatibles en versiones de Flutter.

Por ejemplo, imaginemos que he instalado Flutter 2 y lo estoy usando de manera global:

<img src="https://miro.medium.com/max/1450/1*axwl4f4neI1QsBUtOX4OUw.png" alt="Usando Flutter 2 de manera global con FVM">

Pero todavía no se ha hecho la migración del proyecto a la nueva versión o hay dependencias no compatibles y necesitas usar una versión anterior.

Para ello podemos ir al proyecto desde la terminal y ejecutar el comando ```fvm use <version>``` sin la opción --global.

<img src="https://miro.medium.com/max/1134/1*htMIeI1QZXeLHf6j-J6ABA.png" alt="Ejecutando el comando fvm use sin ser en modo global">

Esto creará una carpeta llamada .fvm donde tendremos:

* **fvm_config.json**: fichero donde se especifica la versión de Flutter a usar para el proyecto
* **flutter_sdk**: carpeta con el SDK de Flutter en la versión especificada

<blockquote>En la carpeta .fvm/flutter_sdk está todo el SDK completo de Flutter y eso es algo que no queremos/debemos subir a nuestros repositorios por lo que hay que ignorar los cambios en esa ruta añadiéndola a nuestro fichero .gitignore si estáis usando git, por ejemplo.</blockquote>

Ya sólo hay que decirle al IDE que en vez de usar la carpeta con la versión global utilice la que se crea de manera local en el proyecto. Vamos a ello.

En VS Code indicamos la ruta del proyecto local antes de la ruta con la versión por defecto; con eso conseguimos darle preferencia a la versión de proyecto frente a la versión global. Además podemos añadir la ruta al resto de versiones como última opción:

<img src="https://miro.medium.com/max/1400/1*cuChcVxlEfAJGMTnsCTtcQ.png" alt="Configuración de Flutter con fvm">

Con esto conseguimos decirle a VS Code dónde puede encontrar cualquiera de las versiones que tenemos de Flutter. Así conseguiremos que ejecutando el comando “Flutter: Change SDK” o abriendo el pubspec.yaml podamos acceder a cualquiera de las versiones que tenemos de Flutter.

<img src="https://miro.medium.com/max/1400/1*i4Bro0GDKUwio3yo3tuRFg.png" alt="Ejemplo del fichero pubspec.yaml">

<img src="https://miro.medium.com/max/1400/1*dJDmDn7eTLtoHEnbzzvdPQ.png" alt="Ejemplo del comando 'Change SDK' en VS Code">

En Android Studio/IntelliJ no he encontrado la opción como en VS Code de decirle un listado de directorios con versiones de Flutter, así que toca configurarlo a mano y reiniciar Android Studio cuando cambiemos el valor.

<img src="https://miro.medium.com/max/1400/1*6St8Hdy2Hsy050asiMDPxA.png" alt="Ejemplo del selector de ruta para Flutter en Android Studio">

💪 ¡Y ya podemos utilizar diferentes versiones de Flutter en diferentes proyectos!

## Bonus: aplicación para gestionar FVM

<img src="https://miro.medium.com/max/1000/1*50ZB-a-V_sT7xTUeXZoRLQ.png" alt="Aplicación con interfaz de usuario de FVM">

Actualmente se está trabajando en una aplicación en Flutter 💙 para gestionar FVM a través de una interfaz gráfica.

Podéis descargaros el código de la app y ejecutarla en el siguiente link (que por supuesto utiliza fvm 😊)

https://github.com/leoafarias/sidekick

Os dejo por aquí enlaces tanto al paquete en pub.dev como al repositorio oficial de Github:

https://pub.dev/packages/fvm

https://github.com/leoafarias/fvm

Espero que os haya facilitado un poco más adoptar esta herramienta que la verdad creo que es un básico ahora mismo, sobre todo si trabajas en varios proyectos y no quieres lidiar con diferentes errores por versiones antes de tiempo.

Por supuesto si te ha gustado no olvides compartirlo por las redes.
