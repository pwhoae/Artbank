---
title: "[TUTORIAL] SHADER de OJOS estilo ANIME para Godot (¡ojos procedurales!)"
source: "https://www.youtube.com/watch?v=48EdvWaR2Oc"
author:
  - "[[Profesor Shader]]"
published: 2026-06-07
created: 2026-07-10
description: "Con este SHADER de ojos procedurales para Godot, podrás crear y animar fácilmente los ojos de tus personajes 3D estilo ANIME. Os lo explico todo paso a paso, y recordad...¡Código de ejemplo en mi gi"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=48EdvWaR2Oc)

Con este SHADER de ojos procedurales para Godot, podrás crear y animar fácilmente los ojos de tus personajes 3D estilo ANIME. Os lo explico todo paso a paso, y recordad...  
  
¡Código de ejemplo en mi github!

## Transcript

**0:04** · Hola. En el vídeo de hoy vamos a ver cómo crear un shader para dibujar ojos estilo anime. Normalmente se usan texturas, pero para dibujar los ojos podemos usar un shader. Al fin y al cabo, dibujar un ojo consiste básicamente en dibujar muchos circulitos.

**0:19** · Usando un shader tiene sus ventajas, la textura también, pero en este caso vamos a usar un shader y las ventajas de usar un shader serían la facilidad para mover el ojo, también el hecho de que podemos cambiar los colores y ciertos tamaños de forma muy sencilla.

**0:39** · También podemos hacer que ese ojo se mueva, pero lo que es, por ejemplo, la pupila se haga más pequeña, más grande.

**0:48** · También podemos hacer que lo que son los reflejos especulares se muevan, tiemblen un poquito y ese tipo de efectos que con una textura sería muy difícil. Vamos allá.

**1:09** · Este es el sale de resultante que he conseguido obtener.

**1:13** · Eh, la escena es muy sencillita. Tenemos dos mes eh instance 3D con planos y cada uno tiene su material. Como podéis ver, cada ojo es diferente, ¿vale? Pero son simplemente eso, son un par de planos.

**1:26** · Obviamente esto lo después en un modelo 3D de un personaje se le pueden poner este tipo de texturas, bueno, este tipo de materiales más bien dicho. Y bueno, del mismo modo que tenemos eh dos Messi Stans 3D, también tenemos eh dos materiales, uno para cada ojo. Esto es importante porque eh estos ojos pues siguen la trayectoria de del objeto que nos interese, ¿vale? Entonces, la dirección no siempre es la misma, porque veis aquí la dirección es diferente para cada ojo.

**1:56** · Entonces, no solo por el tema de que a lo mejor me interesa que cada ojo tenga su propio color, sino también es un tema de de la dirección del ojo.

**2:06** · ¿Qué más? Tenemos la escena principal, que es esta. Y en scripts tenemos un script muy sencillito que es el que se encarga de pasarle al shader en cuestión, que es esta propiedad, la dirección del ojo, ¿vale?

**2:20** · No, no tiene más. Sí que es cierto que cuando intentéis aplicarle esto a lo que es un modelo 3D real, eh, tenéis que tener en cuenta que el global position no tendría que ser el global position del muñeco, sino debería ser la posición de del ojo, ¿vale? del ojo en el muñeco.

**2:36** · Así que tened cuidado cuando cuando usáis este script si intentáis aplicárselo a un muñeco real. Luego nada, tengo una cámara y una dirección 3D y básicamente ya estaría. Entonces para llegar a este Sader he hecho varias versiones y bueno, vamos a revisarlas poco a poco. Empezaremos por la primera donde básicamente dibujamos un círculo y poco más.

**3:02** · Bueno, tal y como he dicho en la intro, dibujar un ojo básicamente consiste en dibujar círculos.

**3:08** · Entonces, esta primera versión nos dibuja un círculo muy sencillito.

**3:14** · Vamos a cambiarle el shader.

**3:19** · ¿Veis? Simplemente un círculo. ¿Y qué es lo que hace? Pues bueno, tenemos una función que es esta que nos permite determinar si una posición UV está dentro de un radio. Todo lo que nos permite es saber si está dentro o fuera.

**3:34** · De hecho, la función devuelve eso, devuelve uno o cero. Y bueno, esta versión es esta función es un refrito de una función que podéis encontrar en Godo Saders. Por cierto, tienen mi shader de metal, lo tienen como trending, ¿eh? Y bueno, aquí tenéis los ades, aquí tenéis snipets y aquí podéis encontrar funciones, funciones ya hechas, trocitos de código y aquí tenéis funciones para lo que son formas y aquí tenemos la del círculo, ¿vale?

**3:58** · Esta versión del círculo pues además de la posición el radio pues indicar cómo de suaves el borde del círculo y usar el smooth stip. En mi caso no. En mi caso la función es más sencillita, simplemente usar el stip y no tiene no tiene un borde suave, ¿vale?

**4:16** · La la principal diferencia. Si queréis intentar dibujar un círculo, hay un círculo, un un ojo con suavidad en los bordes, podéis intentarlo, pero bueno.

**4:24** · Hm. tendrá quedará un poquitico diferente y bueno, puede quedar un poco la sensación de borroso, depende cómo lo hagáis, pero bueno, puede ser interesante, eh, es un reto que os podéis poner. Y nada, esta función es usada a su vez por esta otra función que he hecho yo, que simplemente es eso, usa la función circle para saber si está dentro la posición y el radio, perdón, si esa posición está dentro del radio. Y luego ya dependiendo de si esta función devuelve 01, hago un mix. Eso sería como un if. Si vale cero, pues está fuera.

**4:57** · Piera el color, eh, perdón, pillará el valor de de dentro.

**5:03** · Eh, me acabo de dar cuenta que la ha hecho al revés, creo. Bueno, da igual, funciona.

**5:10** · Vale, si devuelve cero está dentro de de lo que es el el círculo y si devuelve uno está fuera.

**5:19** · Vale, no importa mucho. Aquí habría que cambiar el comentario y ya está.

**5:24** · Y nada, esa función la usa el fragment, dice, "Mira, las lluvis ahora mismo la posición esa, eh, de este radio, me pintas el color del iris y si no, el color del fondo." Vale, no tiene más. Veamos ahora la segunda versión del del Sadder.

**5:49** · Esta es la segunda versión del Sadder.

**5:52** · Es un poquito más complicada apenas.

**5:55** · Vale, tenemos esta vez también la pupila, ¿vale? Y nada, simplemente llamamos dos veces a la función F circle. Realmente la función F circle no pinta el círculo, simplemente elige el color. Después, eh, quien lo pinta realmente, digamos, que sería esta línea. Entonces, inicialmente decide el color de del iris y después eh

**6:17** · si está dentro de lo que sería eh ya no el radio de lo que es el círculo de de lo que es el ojo, sino el radio de lo que es el ojo multiplicado por el radio de de la pupila, pues dice, "Vale, sí, estás dentro del, pero también estás dentro de la pupila, entonces cambia el color, ¿vale?" Entonces pilla el color de la de la pupila o si est si estuviera fuera, pues el color actual que puede ser o el blanco o o en este caso el rojito, ¿vale? Entonces eso en lugar de llamar una una vez a la función llamamos dos veces.

**6:45** · La primera entre el color de fondo y el color del iris y la segunda entre el color actual, el que haya elegido la primera vez y el color de la pupila, ¿vale? Es complicar un poquito más y y ya está. Veamos la tercera versión de del Sadder.

**7:01** · Esta es la tercera versión del Sader.

**7:04** · Simplemente pues tiene un poquito más de cosas. Esta vez dibuja otra circunferencia. Se podía haber usado la misma función, la función F circle, pero esta vez me me he hecho otra función que se llama Stroke Circle, que es muy parecida, pero en este caso eh ella ya llama dos veces a la función circle. Y bueno, ahora tenemos el el color de fuera, el color de dentro, ¿vale? que en realidad sería el color de lo que sería el trazado.

**7:32** · Y luego tenemos el el tamaño de del círculo, pero también tenemos el tañado el tamaño del trazado, ¿vale? Entonces, es una función un poquito más complicada, pero bueno, el sader es lo mismo que antes, ¿veis? Entonces, elige primero el color del iris o el color del fondo, después color de la pupila o el color anterior y después color del low line o el color anterior. Entonces tenemos ahora mismo dos funciones que dos llamadas, una función que básicamente dibujaría un círculo sólido o haría ese efecto y esta que dibuja un círculo, pero sin pintar, sino que es solo el trazado, ¿vale?

**8:03** · Pero el concepto básicamente es el mismo.

**8:10** · Veamos ahora la la cuarta versión.

**8:13** · Vale, esta cuarta versión y implementa una nueva función. De nuevo, insisto, esto realmente no es una función que dibuja un círculo, sino que elige un color. Esta es una versión todavía un poquito más enrevesada. Esta vez usa dos veces la función F circle y esta básicamente va a pintar un círculo igual que la primera función que hemos visto, la de F Circle, pero un círculo recortado por otro círculo. ¿Vale?

**8:38** · Básicamente est es para el efecto este de la sombra.

**8:42** · Vale, vamos a ajustarlo en el material y lo veréis mejor. Aquí tenemos un parámetro para lo que es ajustar la sombra. La sombra tiene un una posición desplazada respecto a lo que es eh digamos la posición central del ojo, ¿ves? Y podemos hacer este efecto, ¿vale? Entonces eso se consigue dibujando un círculo dentro de otro círculo recortado, ¿vale? En redat con la primera función de nuevo podíamos hacerlo casi todo, pero por no complicar el código me lo hecho así.

**9:12** · De nuevo, veis, el código es muy similar al anterior. ¿Vale? Dibujamos primero, en este caso, dibujamos la sombra, ¿vale? Entonces, dibuja. Fijaos que la sombra esta vez eh los parámetros son un poquito más complicados, tiene más más cositas, ¿no? Tiene la posición de la máscara, el radio de la máscara, el color de la del de la máscara, que sería el blanco. En este caso empieza dibujando el blanco. Y luego dentro de lo que es ese círculo que dibuja dentro de esa máscara, entonces ya tiene dos colores como siempre, ¿no?

**9:42** · El color de dentro y el color de fuera.

**9:47** · Luego eh el iris pues en realidad ya se está dibujando aquí, ¿vale? Entonces él dibuja primero lo que es la máscara con la sombra y est dibujando lo que es la pupila y el iris al mismo tiempo. Perdón, la pupila, el iris, la sombra y el iris. Por eso aquí ya no dibujo el iris. Y luego lo de siempre, dibujamos la pupila y dibujamos el line. Vale, lo mismo de antes. Veamos la quinta versión.

**10:16** · Vale, esta quinta versión ya es más interesante. Tenemos los reflejos especulares, ¿vale? Estos puntitos aquí ya están animados, esta es la versión final.

**10:27** · Y bueno, de nuevo es muy parecido a lo que hemos visto, pero ahora tenemos otra función que es para dibujar estos reflejos peculares, que de nuevo es como un refrito de lo anterior, ¿vale? En este caso, pues además de dibujar lo que es el circulito, también dibuja el trazado. Entonces, hace las dos cosas.

**10:45** · Antes hemos visto que la función F circle pintaba un círculo, pero no dibujaba el trazado de círculo. La función stroke círcule circle hacía lo contrario, es decir, dibujaba el trazado, pero no lo pintaba el círculo al interior. Pues esta función hace las dos cosas, ¿vale? El drag circle dibuja el círculo, el lo que es el trazado, pero también el relleno, hace las dos cosas.

**11:06** · Por eso, además de la posición y el y el radio del círculo, pues pide el tamaño del del trazado, el color de fuera, el color del trazado y el color de dentro, ¿vale? Es un poquito más más complicada, pero nuevo, veis, todas tiran de de la función circle en último en último caso. Entonces, nada, el resto del sad es muy sencillo, es parecido a lo de antes. Dibujamos la sombra.

**11:34** · También está dibujando el Iris. Vale, aquí habría que que comentarlo. Eh, dibuja la pupila después, después encima dibuja esos dos puntos especulares y después dibuja el line. Vale, muy parecido al anterior. Vamos con el sexto que ya la cosa se complica un poquito más. Ahí, ¿vale? En esta versión seis, el dibujado es básicamente igual.

**12:03** · Veréis que no ha cambiado, pero tenemos más cosas relativas a antes de dibujar, ¿vale? Antes de dibujar, pues primero calcula lo que sería un desplazamiento del especular. A mí me interesaba que dependiendo del ángulo el especular se moviera. Si os fijáis, aquí el especular está tocando lo que es el borde del ojo.

**12:26** · Y cuando cambio, ¿veis?

**12:29** · Entonces le da más sensación de que sea realmente un reflejo especular, no sea simplemente una mancha, depende de la vista, ¿vale? Por eso estoy usando la la normal y tal. Por supuesto, se puede configurar el desplazamiento y tal. Y bueno, también estoy usando lo de calcular la dirección del ojo, ¿vale?

**12:45** · Ahora, simplemente pues lo mismo que habíamos visto antes de de que aquí había código para dibujar círculos y tal, también hay para código para trasladar ese círculo, esa forma, esa figura. eh rotarla, escalarla, ¿vale?

**13:02** · Pues lo que estoy básíficamente es es haciendo eso, ¿no? Estoy modificando lo que es eh el trasladar ese círculo, que básicamente es modificar las lluvis y y lo estoy haciendo a partir de una dirección, ¿vale? Entonces, aquí lo que hago es la dirección que me llega desde el script, que es un uniform, ¿vale?, que se tiene que indicar por script. Él tiene una dirección por defecto, pero tienes que que modificarla.

**13:27** · Pues bueno, la convierte a espacio local, después limita el movimiento para que no se mueva demasiado, ¿vale? Para que el ojo no se salga de órbita, digamos.

**13:38** · Y nada, luego conviértete de espacio local a espacio UV, porque al final lo que queremos es desplazar una figura 2D en un en un plano, ¿vale? Y y poco más. Aquí tenemos eh alguno un poquito más de código. Aquí también está el hecho de de escalar el ojo. Vale, tengo aquí pues un poquito lo que hemos visto antes, es decir, aquí tenemos código para escalar, ¿vale?

**14:02** · Entonces, lo que estoy haciendo es eso, estoy escalando el el ojo para que para que no sea una forma totalmente circular, ¿vale? Sea más configurable, porque los ojos de anime no siempre son eh perfectamente circulares. ¿Veis? Aquí me permite, aquí tenemos un fallo. ¿Veis? El espectáculo se sale. Esto está corregido en la última versión.

**14:27** · ¿Vale? Entonces, esto me permite modificar la dimensión del ojo. Fijaos que la espécula lo he mantenido circular, ¿vale? Porque, bueno, los las imágenes de referencia que he estado usando para inspirarme para crear el ojo, pues estaba así. Entonces, lo que hago es es corregirlo, ¿no? Aquí lo que te hago es eso, el las lluvis del ojo y luego las lluvis del especular son un poquito diferentes para aquí mantener esa ese efecto de de círculo. Y nada, por lo demás es exactamente el mismo Sadder. Y finalmente vamos a ver la última versión.

**15:04** · Vale, en esta última versión, bueno, he cambiado render mode. Las anteriores versiones usan el shade, ¿vale? No se aplica luz. Aquí pues sí, sí que es interesante que se aplique luz tarde o temprano, lo que se en los ojos. He deshabilitado la luz ambiental porque me interesa que mantenga los colores que yo elijo. También la especular porque al final al cabo estamos dibujando esas esos circulitos que simulan el especular. Y por lo demás básicamente es muy similar. Esta vez hay un degradado.

**15:31** · El lo que es el iris no es simplemente un color, hay dos colores.

**15:37** · Eso da más juego. Aquí se nota mejor.

**15:39** · ¿Ves? De verde amarillo. Amarillo verdoso aquí naranja. Entonces da da más fuego a la hora de de dibujar, que esto simplemente es un mix entre dos colores.

**15:53** · Aquí está.

**15:56** · Y bueno, también el specular me apetecía hacerlo así este efectillo de de escalado así de ojos que brillan, ¿no?

**16:04** · Lo podéis desactivar. Aquí tenéis el gitter, veis, podemos poner a cero y si estaría quicito.

**16:15** · Y bueno, esta sería eh la cantidad y esto sería la velocidad, ¿vale? A mí me gusta mucho a veces aprovechar un único uniforme para dos cosas.

**16:24** · Así que tenerlo en cuenta. En principio en el SADER suelo poner los comentarios.

**16:28** · ¿Veis? Por ejemplo, aquí en el especular, el X y el Y es la posición del especular y luego la Z es la el tamaño, ¿vale? Entonces, cuando veáis algo que decíis esto, que es aquí os quedará más claro en lo que es el código. ¿Veis? Aquí está el especular A y especular B, tiene esos dos valores, la posición X y dentro de lo que sería las dos dimensiones y la Z es el tamaño tamaño de de ese especular. Como veis, aquí ya está corregido lo de que se desborde.

**16:55** · Y bueno, esa esa corrección de que de que se borre simplemente es pues vuelvo a dibujar otro círculo y ya está. Vale, como el espécular sobresalía, pues digo, bueno, dibujo otro círculo y mantengo el color de dentro, si está dentro y si está fuera, pues el fondo, color de fondo otra vez. Vale, al final recordad que esta función, estas funciones realmente no dibujan, lo que hacen es elegir un color y ese color va cambiando hasta que finalmente queda el color final. Vale, pero le pongo este nombre de dra circle circle porque así es más más intuitivo. Y ya está. Este sería el SER que he hecho.

**17:29** · Estoy bastante contento. Resultaba bastante interesante, pero os voy a enseñar otra prueba más que he hecho al final con un muñeco más interesante porque, bueno, esto está bien, es interesante esto lo que subirá GitHub, pero quería ver qué tal quedaba en un muñeco más real.

**17:51** · Y bueno, aquí tengo el Sader funcionando en otro proyecto. Eh, esta vez estoy usando un muñeco de Broid Studio. Además de mis shades de ojos, estoy usando mis shades de Tun, misades de tún metálico.

**18:05** · El modelo es de Pro Studio, pero la parte de los ojos no sabía yo que iba a ser tan complicada. Tenido que editar bastante el modelo y se ha quedado poco raro, pero bueno, el resultado final ni tan mal.

**18:29** · ¿Qué tal el resultado es interesante, verdad? Ha quedado bien. Cualquier cosa me lo dejáis en los comentarios. Si os ha gustado, dadle a like, así sé que tengo que crear más contenido de este tipo porque os ha gustado. Y no os olvidéis de suscribiros, porque de esta forma YouTube os enviará notificaciones cada vez que publico un nuevo vídeo y no os lo perderéis. Un saludo y hasta el próximo vídeo.