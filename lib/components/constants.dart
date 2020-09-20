

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);
const kSendButtonTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);
const KMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(
      color: Colors.lightBlueAccent,
      width: 2.0,
    ),
  ),
);

const KTextFieldDecoration =InputDecoration(
  hintText: 'ingrese su valor',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const TITULO='Healty Challenge';

const arreglox = [
{"nombre": "Crunch Invertido", "imagen": "crunch_invertido.JPG", "deporte":'''El crunch inverso es un ejercicio derivado de los crunches o abdominales tradicionales que sirve para trabajar la fuerza en la parte inferior del abdomen. Incluyendo este crunch en tu rutina y siguiendo una dieta adecuada, podrás definir el abdomen de manera rápida. Necesitarás un banco inclinado de abdominales y un rodillo (opcional) como material para entrenar cómodamente.
   Recuerda no mover el ángulo de las rodillas y mantener las rodillas y los pies juntos durante todo el ejercicio. Cuando las piernas están abajo, los pies no deben tocar el suelo, por eso nos ayudamos con la sujeción del rodillo. Y cuando las piernas están arriba, las caderas y los lumbares deben despegarse del banco. También puedes hacer el ejercicio sin rodillo si crees que estás capacitado para hacerlo con la técnica correcta sin este material de ayuda.''' },//{"nombre": "TRAINING", "imagen": "Intro.jpeg", "deporte": "Intro"},
    {"nombre": "Dominadas Comando", "imagen": "dominadas comando.JPG", "deporte": '''"Comando Pull Ups"
Las dominadas comando o commando pull up, son un ejercicio muy bueno para conseguir fortalecer la parte posterior de nuestro cuerpo, enfatizando el esfuerzo muscular en las escápulas.
Además de estos músculos, las dominadas comando también trabajan el pecho, así como los brazos y la espalda superior, además de tener que tensionar especialmente  involucrar el núcleo abdominal para evitar que nuestro cuerpo empiece a girar alrededor de nuestra posición.
Al igual que con otros tipos de dominadas,  las dominadas comando son un ejercicio que al principio nos costará hacernos con él, pues es un movimiento más difícil de lo que puede parecer.  Pero con unas semanas de adaptación, notaremos mejorías sensibles.
¿Qué músculos trabajan las dominadas comando?
-Dorsal ancho
-Bíceps braquial
-Braquiradial
-Deltoides frontal
-Deltoides trasero
-LumbarRecto abdominal
-Trapecio medio
-Trapecio superior
-Serrato
-Tríceps, cabeza larga.'''},
{"nombre": "Dominadas Agarre", "imagen": "dominadas_agarre_prono.JPG", "deporte": '''Cuando nos referimos al agarre prono, significa que las palmas de las manos deben mirar hacia adelante. Si su objetivo es lograr más adelante el Muscle Up, es fundamental que entrenen este tipo de dominadas, y en especial las dominadas altas, intentando llevar las cláviculas a la barra hasta lograr llegar la cintura a la barra. Este tipo de dominadas (las altas) requieren muchísima explosividad.

La anchura del agarre debe de ser como máximo 1,5 veces nuestro ancho biacromial, es decir, el ancho de nuestros hombros.'''},
{"nombre": "Handstand Push UP", "imagen": "handstand push up.JPG", "deporte": '''Uno de los ejercicios más recurrentes dentro del CrossFit son los handstand push-ups. Es un ejercicio que, independientemente de que tengas la fuerza suficiente para realizarlo, deberás practicar para realizarlo de la forma más segura y económica posible, puesto que en CrossFit cada repetición y segundo cuenta. Durante una handstand push-up, la muñeca recibe toda la presión del peso corporal mientras mantiene una posición en extensión. Esto supone una gran carga para esta articulación por lo que es importante fortalecerlas. '''},
{"nombre": "Flexiones de Arquero", "imagen": "flexiones de arquero.JPG", "deporte": '''Las flexiones del arquero, son un ejercicio que nos ayuda a entrenar un brazo con más intensidad que la versión estándar del ejercicio. En una posición de plancha, pasaremos de un lado del cuerpo a otro, lo que nos obligará a nuestro otro brazo, al hombro, al núcleo abdominal, y a la parte superior de nuestra espalda, a trabajar más para manejar la carga adecuadamente. Para hacer las flexiones del arquero, deberemos mantener el cuerpo en plancha, con la punta  de los pies apoyadas en el suelo y con las dos manos agarrando las anillas.

Desplazaremos uno de los brazos, hacia uno de los lados, hasta mantenerlo extendido por completo. El otro bazo, sostendrá la anilla con agarre neutro, siendo el más cómodo para hacer el movimiento de flexión.

Como si de una flexión a una mano se tratase, bajaremos  hasta que el pezón toque con la plama de nuestras manos y volveremos a subir nuevamente hasta conseguir extender por completo el brazo que está trabajando.'''},
{"nombre": "Fondos en Paralela", "imagen": "fondos en paralela.JPG", "deporte": '''Los fondos en paralelas son un ejercicios de autocarga perfecto para trabajar el pecho y los triceps. Su mayor problema es que si el ejercicio no se realiza de forma correcta podemos acabar lesionados en la articulación del hombro o el codo. Por eso este ejercicio se recomienda realizarlo cuando ya tenemos una buena base muscular y dominamos los ejercicios del gimnasio.

Cuando realizamos fondos en paralelas son dos músculos concretos los que potenciamos: pectoral y triceps. Dependiendo de la inclinación del tronco en el ejercicio estaremos trabajando más uno u otro. Si inclinamos el tronco hacia adelante estaremos metiendo más intensidad al pectoral, sobre todo en su parte clavicular, en cambio si mantenemos el tronco recto la mayor parte del trabajo recae sobre el triceps.'''},
{"nombre": "Fondos Para Triceps", "imagen": "fondos para triceps.JPG", "deporte": '''Los dips o fondos de tríceps son uno de los ejercicios más efectivos para aumentar masa muscular del trícpes. Usaremos nuestro peso corporal para que cuánto más trabaje el músculo más fibras musculares se recluten, y ese es el objetivo que buscamos.


Para comenzar y si necesitas ganar fuerza en los brazos puedes empezar a ejecutar el movimiento en un banco. Si ya tienes fuerza en los brazos, puedes pasar directamente a las barras paralelas. Si es la primera vez que realizas el ejercicio en máquina, sería conveniente fijar el peso en unos dos tercios de tu peso. Pero no te obsesiones al principio con el peso.'''},
{"nombre": "Plancha Frontal Dinamica", "imagen": "plancha frotal dinamica.JPG", "deporte": '''La plancha frontal dinámica es un ejercicio enfocado a desarrollar la musculatura abdominal. La posición inicial es calcada a la plancha frontal convencional, pero en este caso dejarás de lado la parte isométrica para incorporar un movimiento con la pierna.

Para llevar a cabo este ejercicio con total comodidad, es preciso que utilices una esterilla o una colchoneta. Así, no te apoyarás directamente en el suelo. Por lo demás, solo necesitarás tu propio cuerpo.

Antes de hacer el ejercicio es aconsejable que tomes nota en un par de aspectos que beneficiarán los resultados de este ejercicio. El primero, es la colocación. Es muy importante mantener el cuerpo alineado en el regreso a la posición inicial, cabeza incluida. De lo contrario, forzarás la espalda en exceso y puede ocasionarte alguna molestia. Y en segundo lugar, el movimiento. Cómo puedes observar en el vídeo explicativo, el movimiento se realiza lentamente y de manera concentrada. De nada sirve hacerlo deprisa y corriendo sin seguir el recorrido adecuado.'''},
{"nombre": "Plancha Variación Para Oblicuos", "imagen": "plancha variacion para oblicuos.JPG", "deporte": '''Una de las variaciones de las planchas más utilizadas para trabajar los oblicuos es la plancha lateral. A diferencia de otras planchas, en este caso tenemos que apoyarnos lateralmente sobre un único brazo intentando mantener el cuerpo en una linea recta. Tanto la mano como el antebrazo estarán bien apoyados en el suelo y mantendremos los pies en paralelo.
    Este ejercicio nos aporta un beneficio en concreto ya que se trabaja una zona del cuerpo concreta: los abdominales laterales. De todos modos, la posición isométrica también involucra otros músculos como el recto abdominal, los abdominales oblicuos, los deltoides y el trapecio. Si consigues realizar la plancha lateral en el suelo, notarás como tu abdomen se va endureciendo progresivamente y eliminarás la grasa localizada en esta zona.'''},
{"nombre": "Press Copa", "imagen": "press copa.JPG", "deporte": '''Párate derecho y sostén una mancuerna en posición de copa sobre la cabeza. Flexiona los codos y bájala lentamente detrás de tu cabeza mientras mantienes la parte superior de tus brazos completamente quietos. Estira los brazos y súbela para regresar a la posición inicial y repite.
    Toma una mancuerna relativamente mas pesada con ambas manos, el agarre por comodidad debe estar por debajo de los discos.
    Ubica la mancuerna por detrás de la cabeza a la altura de la nuca y comenzar el ejercicio elevando peso y extendiendo los brazos hasta arriba lo máximo posible para mejor resultado en los músculos tríceps, trate de no separar mucho los codos, manténgalos lo mas cerca posible.
    En este ejercicio estara trabajando ambos musculos triceps.'''},
{"nombre": "Pseudo Plancha", "imagen": "pseudo plancha.JPG", "deporte": '''El pseudo planche, se trata de un ejercicio híbrido que sirve para diferentes cometidos. Tiene cierto parecido con las flexiones pectorales típicas, aunque la dinámica varía.

El pseudo planche, se trata de un ejercicio con nuestro peso corporal. Por norma general, y en contraposición con los ejercicios con pesas, trabajar con autocarga potencia más la resistencia muscular. Se tratan de un tipo de ejercicios excelentes como complementos para el entrenamiento de fuerza.

Además, el pseudo planche, se trata de un tipo de flexión con mayor dificultad. ¿Qué quiero decir con todo esto? pues que pueden  ser una manera de superarse para los que las flexiones normales no supongan desafío.'''},
{"nombre": "Puente de Gluteo", "imagen": "puente de gluteo.JPG", "deporte": '''El puente de glúteos (o glute bridge, por su nombre en inglés) es un ejercicio con el que se trabajan los glúteos y la parte trasera de las piernas; también ayuda a fortalecer toda la musculatura del tronco. A pesar de que no se necesita ninguna máquina para hacerlo, es un ejercicio muy efectivo y especialmente adecuado para principiantes, ya que es muy fácil de ejecutar.  Puedes hacerlo en casa usando una esterilla o en el gimnasio si lo prefieres. Después de tan solo un par de repeticiones, ya notarás que tus músculos están bien activados. Si estás buscando un ejercicio que te haga sudar, no dudes en probarlo.'''},
{"nombre": "Push Up", "imagen": "push up.JPG", "deporte": '''Las flexiones son uno de los mejores ejercicios de fitness que existen. Este ejercicio es una parte esencial de cualquier programa de peso corporal. Por ello debería estar presente de vez en cuando en todo programa de entrenamiento de fuerza. Si realizas flexiones de manera correcta, entrenarás fuerza, estabilidad y musculatura del tronco (core). Además  conseguirás una mejor sensación corporal. Al llevar a cabo una flexión limpia tendrás que elevar aproximadamente un 65% de tu peso corporal, mientras todo el cuerpo se halla en tensión para mantener la posición. El ejercicio de flexiones lo puedes realizar en cualquier lugar, allí donde estés.'''},
{"nombre": "Push Up Diamante", "imagen": "push up diamante.JPG", "deporte": '''Para comenzar el ejercicio debemos tumbarnos boca abajo o en posición de decúbito ventral y apoyar las puntas de los pies juntas en el suelo, así como formar bajo nuestro pecho un diamante con las manos.


Para formar el diamante debemos unir ambos pulgares en el suelo y ambas puntas de los dedos índice. Apoyamos toda la palma de la mano y elevamos el cuerpo completo, sin quebrar la cintura.

Cuando logremos una posición de tabla, con el cuerpo alineado de pies a cabeza y nuestros brazos estén completamente extendidos, volvemos a flexionar los brazos para descender todo el cuerpo al mismo tiempo hasta que el pecho roce nuestras manos y volvemos a repetir tantas veces como sea necesario.'''},
{"nombre": "Push Up en Pino", "imagen": "push up en pino.JPG", "deporte": '''Las flexiones de pino son un ejercicio muy potente (y a la vez muy exigente) para trabajar los hombros, trapecios y tríceps. Se trata de una flexión de codos en posición vertical invertida.

¿Cómo se ejecuta el movimiento de flexiones de pino?
Para empezar tenemos que colocarnos de frente a una pared, apoyando las dos manos en el suelo, separadas entre ellas a la altura de los hombros. Extendiendo por completo los brazos, nos colocamos en posición vertical endureciendo el abdomen. Con el tronco y las piernas completamente rectas bajaremos despacio con una flexión de brazos hasta que la cabeza toque el suelo por delante de las manos. Para volver a la posición inicial nos empujamos hacia arriba haciendo fuerza en los brazos. Aconsejo mantener siempre el abdomen duro en todo el movimiento y no arquear la espalda manteniendo los pies en contacto con la pared, para que podamos trabajar de forma segura y eficiente.'''},
{"nombre": "Sentadilla Pliometrica", "imagen": "sentadilla pliometrica.JPG", "deporte": '''Las sentadilla convencional es considerada un ejercicio de pierna, sin embargo con el trabajas varios grupos musculares por lo tanto te ayuda a quemar muchas más calorías. Y ahora con estas sentadillas pilométricas, trabajarás todo tu cuerpo.
    Es importante tener en cuenta una técnica correcta y saber cómo hacer sentadillas: Empieza de pie con las piernas abiertas a la altura de las caderas. Dobla tus rodillas a 90º y baja los glúteos hacia atrás (como si te fueras a sentar). Mantén el peso en tus talones y la espalda recta. Es muy importante que tus rodillas no sobrepasen la punta de los pies.'''},

];