---
title: "[TUTORIAL] SHADER de OJOS estilo ANIME para Godot (¡ojos procedurales!)"
source: "https://www.youtube.com/watch?v=48EdvWaR2Oc"
author:
  - "[[Profesor Shader]]"
published: 2026-06-07
created: 2026-07-23
description: "Con este SHADER de ojos procedurales para Godot, podrás crear y animar fácilmente los ojos de tus personajes 3D estilo ANIME. Os lo explico todo paso a paso, y recordad...¡Código de ejemplo en mi gi"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=48EdvWaR2Oc)

Con este SHADER de ojos procedurales para Godot, podrás crear y animar fácilmente los ojos de tus personajes 3D estilo ANIME. Os lo explico todo paso a paso, y recordad...  
  
¡Código de ejemplo en mi github!

## Transcript

**0:04** · Hola.

**0:05** · En el vídeo de hoy vamos a ver cómo crear un shader para dibujar ojos estilo anime.

**0:10** · Normalmente se usan texturas, pero para dibujar los ojos podemos usar un shader.

**0:16** · Al fin y al cabo, dibujar un ojo consiste básicamente en dibujar muchos circulitos.

**0:21** · Usando un shader tiene sus ventajas, la textura también.

**0:25** · Pero en este caso vamos a usar un shader y las ventajas de usar un shader serían la facilidad para mover el ojo, también el hecho de que podemos cambiar los colores y de otros tamaños de forma muy sencilla.

**0:39** · También podemos hacer que ese ojo se mueva, pero lo que es, por ejemplo, la pupila se haga más pequeña, más grande.

**0:47** · También podemos hacer que lo que se son los reflejos especulares se muevan, tiemblen un poquito y ese tipo de efectos que con una textura sería muy difícil.

**0:57** · Vamos allá.

**1:08** · Este es el shader resultante que he conseguido obtener.

**1:12** · Eh, la escena es muy sencillita, tenemos dos mesh eh instance 3D con con planos y cada uno tiene su material. Como podéis ver, cada ojo es diferente.

**1:24** · Vale, pues son simplemente eso, son un par de planos. Obviamente esto luego después en un modelo 3D de un personaje se le pueden poner este tipo de texturas, bueno, este tipo de materiales, más bien dicho.

**1:34** · Y bueno, en del mismo modo que tenemos eh dos mesh instance 3D, también tenemos eh dos materiales, uno para cada ojo.

**1:42** · Esto es importante porque eh estos ojos, pues siguen la trayectoria de del objeto que nos interese.

**1:50** · Vale, entonces la dirección no siempre es la misma, porque, ¿veis? Aquí la dirección es diferente para cada ojo.

**1:56** · Entonces no solo por el tema de que lo mejor me interesa que cada ojo tenga su su propio color, sino también es un tema de de la dirección del ojo.

**2:06** · ¿Qué más? Tenemos la escena principal, que es esta, y en script tenemos un script muy sencillito, que es el que se encarga de pasarle al al shader en cuestión, que es esta propiedad, la dirección del ojo. Vale, no no tiene más. Sí que es cierto que cuando intentéis aplicarle esto a lo que es un modelo 3D real, eh tenéis que tener en cuenta que el global position no tendría que ser el global position del muñeco, sino debería ser la posición de del ojo.

**2:35** · Vale, del ojo en el muñeco. Así que tened cuidado cuando cuando uséis este script si intentáis aplicárselo a un muñeco real.

**2:42** · Luego nada, tengo una cámara y una dirección 3D, y básicamente ya estaría. Entonces, para llegar a este shader he hecho varias versiones, y bueno, vamos a revisar las poco a poco.

**2:53** · Empezaremos por la primera, donde básicamente dibujamos un círculo y poco más.

**3:02** · Bueno, tal y como he dicho en la intro, dibujar un ojo básicamente consiste en dibujar círculos.

**3:08** · Entonces, esta primera versión nos dibuja un círculo muy sencillito.

**3:14** · Vamos a cambiarle el shader.

**3:19** · ¿Veis? Es simplemente un círculo.

**3:21** · ¿Y qué es lo que hace? Pues bueno, tenemos una función que es esta, que nos permite determinar si una posición UV está dentro de un radio.

**3:32** · Todo lo que nos permite saber si está dentro o fuera, de hecho la función devuelve eso, devuelve uno o cero. Y bueno, esta versión es esta función es un refrito de una función que podéis encontrar en Godot Shaders, por cierto, tienen mi mi shader de metal lo tienen como trending.

**3:48** · Eh y bueno, aquí tenéis los shaders, aquí tenéis snippets, y aquí podéis encontrar funciones, funciones ya hechas, eh, trocitos de código, y aquí tenéis funciones para lo que son formas, y aquí tenemos la del círculo.

**4:00** · Vale, esta versión del círculo, pues, además de la posición, el radio, pues, indicar cómo de suave es el borde del círculo, y usar el smoothstep.

**4:09** · En mi caso no, en mi caso la función es más sencillita, simplemente usar el step, y no tiene, no tiene un borde suave, vale, la la principal diferencia.

**4:17** · Si queréis intentar dibujar un un círculo, ay, un círculo, un un ojo con suavidad en los bordes, podéis intentarlo, pero bueno, mmm, tendrá, quedará un poquito diferente, y, bueno, puede quedar un poco la sección de borroso, depende cómo lo hagáis, pero, bueno, puede ser interesante, ¿eh? Es es un reto que os podéis poner.

**4:35** · Y nada, esta función es usada a su vez por esta otra función que he hecho yo, que simplemente es eso, usa la función circle para saber si está dentro de la posición y el radio, perdón, si esa posición está dentro del radio, y luego ya, dependiendo de si esta función devuelve 0 o 1, hago un mix, eso sería como un if, si vale 0, pues, es, está fuera, pedirá el color, eh, perdón, pedirá el valor de de dentro, eh, no, me acabo de dar cuenta que lo he hecho al revés, creo.

**5:06** · Bueno, da igual, funciona.

**5:10** · Vale, si devuelve 0, está dentro de de lo que es el el círculo, y si devuelve 1, está fuera.

**5:19** · Vale, no importa mucho, aquí habría que cambiar el comentario y ya está.

**5:24** · Y nada, esa función la usa el fragment, dice, "Mira, las UVs, eh, pues, si está dentro, ahora mismo la posición esa, eh, de este radio, me pintas el el color del iris, y si no, el color del fondo."

**5:38** · Vale, no no tiene más.

**5:40** · Veamos ahora la segunda versión del del shader.

**5:49** · Esta es la segunda versión del shader.

**5:52** · Es un poquito más complicada apenas, ¿vale? Tenemos esta vez también la pupila.

**5:58** · ¿Vale? Y nada, simplemente llamamos dos veces a la función fill circle. La realmente la función fill circle no no pinta el círculo, simplemente elige el color. Después eh quien lo pinta realmente es digamos que sería esta línea.

**6:11** · Entonces inicialmente decide el color de del iris y después eh si está dentro de lo que sería eh ya no el radio de lo que es el círculo, de de lo que es el ojo, sino el radio de lo que es el ojo multiplicado por el radio de de la pupila, pues dice, vale, sí, estás dentro del iris, pero también estás dentro de la pupila, entonces cambia el color, ¿vale?

**6:33** · Entonces pilla el color de la de la pupila o si está si estuviera fuera, pues el color actual, que puede ser el blanco o en este caso el rojito.

**6:42** · Vale, entonces eso, en lugar de llamar una una vez a la función, llamamos dos veces. La primera entre color de fondo y el color del iris y la segunda entre el color actual, el que haya elegido la primera vez, y el color de la pupila, ¿vale? Es complicar un poquito más y y ya está.

**6:57** · Veamos la tercera versión de del shader.

**7:01** · Esta es la tercera versión del shader.

**7:04** · Simplemente pues tiene un poquito más de cosas. Esta vez dibuja otra circunferencia. Se podría haber usado la misma función, la función fill circle, pero esta vez me me he hecho otra función que se llama stroke circle, que es muy parecida. Pero en este caso eh ella ya llama dos veces a la función eh circle y bueno, ahora tenemos el el color de fuera, el color de dentro, ¿vale? Que en realidad sería el color de lo que sería el trazado.

**7:32** · Y luego tenemos el el tamaño de del círculo, pero también tenemos el tañado el tamaño del trazado.

**7:38** · Vale, entonces es una función un poquito más más pero bueno, el shader es lo mismo que antes, ¿veis? Entonces elige primero el color del iris o el color del fondo, después color de la pupila o el color anterior y después color del outline o el color anterior. Entonces tenemos ahora mismo dos funciones que con dos llamadas a una función que básicamente dibujaría un círculo sólido o haría ese efecto y esta que dibuja un círculo pero sin pintar, sino que solo el trazado.

**8:05** · ¿Vale? Pero el concepto básicamente es el mismo.

**8:10** · Veamos ahora la la cuarta versión.

**8:13** · Vale, esta cuarta versión y implementa una nueva función de nuevo, insisto, esto realmente no es una función que dibuja un círculo, sino que elige un color. Esta es una versión todavía un poquito más revisada, esta vez usa dos veces la función fill circle y esta básicamente va a pintar un círculo igual que la primera función que hemos visto, la de fill circle pero un círculo recortado por otro círculo, ¿vale? Básicamente esto es para el efecto este de la sombra.

**8:42** · ¿Vale? Vamos a ajustarlo en el material y lo veréis mejor.

**8:46** · Aquí tenemos un parámetro para la que se ajuste la sombra. La sombra tiene una una posición desplazada respecto a lo que es eh digamos la posición central del ojo, ¿veis? Y podemos hacer este efecto.

**9:01** · ¿Vale? Entonces eso se consigue dibujando un círculo dentro de otro círculo recortado.

**9:05** · ¿Vale? En realidad con la primera función de nuevo podemos hacerlo casi todo pero por no complicar el código me lo he hecho así. De nuevo, ¿veis? El código es muy similar al anterior.

**9:16** · ¿Vale? Dibujamos el primero, en este caso dibujamos la sombra ¿vale? Entonces dibuja o fijaos que la sombra esta vez eh los parámetros son un poquito más complicados, tiene más más cositas, ¿no?

**9:28** · Tiene la posición de la máscara, el radio de la máscara, el color de la del de de la máscara, que sería el blanco en este caso, pero dibujando el blanco y luego dentro de lo que es eh ese círculo que dibuja dentro de esa máscara, entonces ya tiene dos colores, como siempre, ¿no? El color de dentro y el color de fuera.

**9:47** · Luego, eh, el iris, pues en realidad ya ya se está dibujando aquí, ¿vale? Entonces él dibuja primero lo que es la máscara con la sombra y dibujando lo que es la pupila y el iris al mismo tiempo.

**10:01** · Perdón, la pupila y el iris, la sombra y el iris. Pues aquí ya no dibuja el iris.

**10:06** · Y luego lo de siempre, dibujamos la pupila y dibujamos el outline, ¿vale? Lo mismo de antes. Veamos la la quinta versión.

**10:16** · Vale, esta quinta versión ya es más interesante, tenemos los reflejos especulares, ¿vale?

**10:22** · Estos puntitos.

**10:24** · Aquí ya están animados, esta es la versión final.

**10:27** · Y bueno, de nuevo es muy parecido a lo que hemos visto, pero ahora tenemos otra función que es para dibujar estos reflejos especulares, que de nuevo es como un un refrito de lo anterior, ¿vale? En este caso, pues además de dibujar lo que es el circulito, también dibuja el trazado.

**10:44** · Entonces hace las dos cosas. Antes hemos visto que la función fill circle pintaba un círculo, pero no dibujaba el trazado del círculo, la función stroke circle circle hacía lo contrario, es decir, dibujaba el trazado pero no lo pintaba, el círculo en el interior, pues esta función hace las dos cosas, ¿vale? El draw circle dibuja el círculo, el lo que es el trazado, pero también el relleno, hace las dos cosas.

**11:07** · Por eso además de la posición y el y el radio del círculo, pues pide el tamaño del del del trazado, el color de de fuera, el color del trazado y el color de dentro, ¿vale? Es un poquito más más complicada, pero de nuevo, veis, todas tiran de de la función circle en último en último caso. Entonces nada, el el resto del shader es muy sencillo, es parecido al de ¿vale? Dibujamos la sombra, también está dibujando el iris, ¿vale? Aquí habría que que comentarlo.

**11:38** · Eh, dibuja la pupila después, después encima dibuja esos dos puntos especulares y después dibuja el outline, ¿vale? Muy parecido al anterior. Vamos con el sexto que ya la cosa se complica un poquito más ahí.

**11:57** · Vale, en esta versión seis el dibujado es básicamente igual.

**12:03** · Veréis que no no ha cambiado, pero tenemos más cosas relativas a antes de dibujar, ¿vale? Antes de dibujar pues primero calcula lo que le sería un desplazamiento del especular.

**12:16** · A mí me interesaba que, dependiendo del ángulo, el especular se moviera, si os fijáis.

**12:22** · Aquí el especular está tocando lo que es el borde del ojo y cuando cambio, ¿veis?

**12:29** · Entonces, le da más sensación de que sea realmente un reflejo especular, no sea simplemente una mancha.

**12:34** · Depende de la vista, ¿vale? Por eso estoy usando la la normal y tal.

**12:39** · Por supuesto se puede configurar el desplazamiento y tal.

**12:42** · Y bueno, también estoy usando lo de calcular la dirección del ojo, ¿vale?

**12:45** · Ahora simplemente pues lo mismo que habíamos visto antes de de que aquí había código para dibujar círculos y tal, también hay para código para para trasladar ese círculo, o sea, formas, esa figura, eh, rotarla, escalarla, ¿vale?

**13:02** · Pues lo que estoy básicamente es es haciendo eso, ¿no? Estoy modificando lo que es eh, el trasla- el trasladar ese círculo, que básicamente es modificar las UVs y y lo estoy haciendo a partir de una dirección, ¿vale?

**13:15** · Entonces, aquí lo que hago es la dirección que me llega desde el script, que es un uniform, ¿vale? Que se tiene que indicar por script, él tiene una dirección por defecto, pero tienes que que modificarla, pues bueno, la la convierte a espacio local, después limita el movimiento para que no se mueva demasiado, ¿vale? Para que el ojo no se salga de de órbita, digamos.

**13:38** · Y nada, luego convierte de espacio local a espacio UV, porque al final lo que queremos es desplazar el la figura 2D en un en un plano.

**13:47** · ¿Vale? Y poco más. Aquí tenemos eh alguno un poquito más de código. Aquí también está el hecho de de escalar el ojo, ¿vale? Tengo aquí, pues, un poquito lo que hemos visto antes, es decir, aquí tenemos código para escalar.

**14:02** · ¿Vale? Entonces, lo que está haciendo es eso, estoy escalando el el ojo para que para que no sea una forma totalmente circular, ¿vale? Sea más configurable, porque los ojos de anime no siempre son eh perfectamente circulares, ¿veis? Aquí me permite Aquí tenemos un fallo, ¿veis? El especular se sale. Esto está corregido en la última versión.

**14:27** · ¿Vale? Entonces, esto me permite modificar la dimensión del ojo. Fijaos que el especular lo he mantenido circular, ¿vale? Porque, bueno, las las imágenes de referencia que he estado usando para inspirarme para crear el ojo, pues, estaba así. Entonces, lo que hago es es corregirlo, ¿no? Aquí lo que te hago es eso, el el las UVs del ojo y luego las UVs del especular son un poquito diferentes para aquí mantener es esa ese efecto de de círculo.

**14:53** · Y nada, por lo demás, es exactamente el mismo shader.

**14:56** · Y finalmente vamos a ver la última versión.

**15:04** · Vale, en esta última versión, bueno, he cambiado el render mode, las anteriores versiones usan el unshaded, ¿vale? No se aplica luz. Aquí, pues, sí sí que es interesante que se aplique luz tarde o temprano en lo que son los ojos.

**15:16** · He deshabilitado la luz ambiental porque me interesa que mantenga los colores que yo elijo.

**15:21** · También la especular, porque al fin y al cabo estamos dibujando esas esos circulitos que simulan el especular y por lo demás básicamente muy similar.

**15:29** · Esta vez hay un degradado, el lo que es el iris no es simplemente un color, hay dos colores.

**15:37** · Eso da más juego, aquí se nota mejor, ¿ves? De verde a amarillo.

**15:41** · Amarillo verdoso.

**15:43** · Aquí naranja.

**15:44** · Entonces da da más juego a la hora de de dibujar, que eso simplemente es un un mix entre dos colores.

**15:52** · Aquí está.

**15:56** · Y bueno, también el especular me apetecía hacerlo así, este efectillo de de escalado así de ojos que brillan, ¿no? Lo podéis desactivar, aquí tenéis el jitter.

**16:08** · ¿Veis?

**16:09** · Podemos ponerlo a cero.

**16:12** · Y se estaría quietecito.

**16:15** · Y bueno, esto sería eh la cantidad y esto sería la velocidad, ¿vale? A mí me gusta mucho a veces aprovechar un único uniform para dos cosas.

**16:24** · Así que tenerlo en cuenta. Lo en principio en el shader suelo poner los comentarios, ¿veis? Por ejemplo, aquí en el especular el X y el Y es la posición del especular y luego la Z es la el tamaño.

**16:35** · Vale, entonces cuando veáis algo que decís, "¿Esto qué es?"

**16:38** · Aquí os quedará más claro en lo que es el código. ¿Veis? Aquí está el especular A y especular B, tiene esos dos valores, la posición X y Y dentro de lo que sería las dos dimensiones y la Z es el tamaño.

**16:49** · Tamaño de de ese especular. Como veis aquí ya está corregido lo de que se desborde.

**16:55** · Y bueno, esa esa corrección de que de que se borre simplemente es pues vuelvo a dibujar otro círculo y ya está.

**17:02** · Vale, como el especular sobresalía, pues digo, bueno, le dibujo otro círculo y mantengo el color de dentro si está dentro y si está fuera, pues el fondo, color de fondo otra vez.

**17:11** · Vale, al final recordad que esta función estas funciones realmente no dibujan, lo que hacen es elegir un color y ese color va cambiando hasta que finalmente queda el color final, ¿vale?

**17:21** · Pero le pongo este nombre de Draw Circle Circle porque así es más más intuitivo.

**17:26** · Y ya está, este sería el shader que he hecho.

**17:30** · Estoy bastante contento.

**17:32** · El resultado es bastante interesante.

**17:34** · Pero os voy a enseñar otra prueba más que he hecho al final con con un muñeco más interesante porque, bueno, esto está bien, es interesante, esto lo que subiré a GitHub.

**17:43** · Pero quería ver qué tal quedaba en un muñeco más más real.

**17:51** · Y, bueno, aquí tengo el shader funcionando en otro proyecto. Eh, esta vez estoy usando un muñeco de Project Studio.

**17:59** · Además de mis shaders de ojos, estoy usando mis shaders de toon, mis shaders de toon metálico.

**18:05** · El modelo es de Project Studio, pero la parte de los ojos no sabía yo que iba a ser tan complicada, es tuve que editar bastante el modelo y se ha quedado ahí un poco raro.

**18:15** · Pero, bueno, el resultado final ni tan mal.

**18:29** · ¿Qué tal? El resultado es interesante, ¿verdad? Ha quedado bien.

**18:33** · Cualquier cosa me dejáis en los comentarios. Si os ha gustado, dadle like, así sé que tengo que crear más contenido de este tipo porque os ha gustado. Y no os olvidéis de suscribiros porque de esta forma YouTube os enviará notificaciones cada vez que publique un nuevo vídeo y no os lo perderéis.

**18:48** · Un saludo y hasta el próximo vídeo.