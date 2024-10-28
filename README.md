## **Indice**
- [Estructura del programa](#estructura-del-programa)
- [Tipos de dato](#tipos-de-dato)
- [Operadores](#operadores)
    - [Lógicos](#lógicos)
    - [Aritméticos](#aritméticos)
    - [Asignación](#asignación)
    - [Encadenamiento](#encadenamiento)
    - [Paréntesis](#paréntesis)
- [Variables dato](#variables-dato)
    - [Declaración](#declaración)
    - [Operaciones](#operaciones)
- [Instrucciones](#instrucciones)
    - [Control](#control)
    - [Estado](#estado)
    - [Acción](#acción)
    - [Desplazamiento](#desplazamiento)
    - [Comunicación](#comunicación)
    - [Random](#random)
- [Secciones](#secciones)
    - [Programa](#programa)
    - [Procesos](#procesos)
    - [Áreas](#áreas)
    - [Robots](#robots)
    - [Variables](#variables)
    - [Comenzar y fin](#comenzar-y-fin)

 <br> 



## Estructura del Programa

La estructura básica de un programa se compone de las siguientes secciones:

programa

procesos (no necesaria)

areas

robots

variables (no necesaria)

comenzar fin

markdown
Copiar código

### Descripción de Secciones

- **programa**  
  Donde se asigna el nombre del programa.

- **procesos**  
  Permite crear módulos o segmentos de código para realizar una o varias tareas (opcional).

- **areas**  
  Donde se definen los tipos de áreas en el mapa.

- **robots**  
  Donde se desarrollan los algoritmos que determinan la interacción y acciones de cada tipo de robot.

- **variables**  
  Donde se declaran las variables para cada tipo de robot (opcional).

- **comenzar fin**  
  Aquí se asignan las áreas y el posicionamiento inicial en el mapa para cada robot definido.

> [!TIP]
> **IMPORTANTE**: Todas las secciones se detallan en el apartado de [Secciones](#secciones).

[:house:](#indice)



<br>



## **Tipos de dato**

Existen dos formas principales de representar información:

### Número
Representa cantidades, similar a los números enteros en matemáticas, con un rango de -2^31 a 2^31.

### Booleano
Representa la veracidad de una afirmación. Tiene dos valores:
- **"V"** para representar verdad
- **"F"** para representar falsedad

También se usa para indicar existencia, permisos o habilitación.

[:house:](#indice)



<br> 


## Operadores

Dentro de la sintaxis del lenguaje, los operadores son un conjunto de caracteres que permiten la manipulación y/o comparación de valores explícitos o en variables.

### Lógicos

Los operadores lógicos producen valores booleanos (verdad o falsedad) en función de las entradas.

#### Operadores para datos booleanos:
| Sintaxis | Nombre/s           |
|:--------:|:-------------------:|
| `~`      | Negación, No       |
| `|`      | Disyunción, Ó      |
| `&`      | Conjunción, Y      |
| `=`      | Igualación, Igual  |
| `<>`     | Diferente, Distinto|

#### Operadores para datos numéricos:
| Sintaxis | Nombre/s               |
|:--------:|:-----------------------:|
| `=`      | Igualación, Igual       |
| `<>`     | Diferente, Distinto     |
| `<`      | Menor                   |
| `>`      | Mayor                   |
| `<=`     | Menor o igual           | 
| `>=`     | Mayor o igual           |

---

### Descripción de Operadores

#### Operador `~`
El **no** es un operador unario (se aplica a un solo valor) que invierte el valor lógico.

| Entrada | Resultado |
|:-------:|:---------:|
| `~F`    | `V`       |
| `~V`    | `F`       |

#### Operador `|`
El **o** es un operador binario que resulta en verdad si al menos uno de los valores es verdad.

| Entrada   | Resultado |
|:---------:|:---------:|
| `F | F`   | `F`       |
| `V | F`   | `V`       |
| `F | V`   | `V`       |
| `V | V`   | `V`       |

#### Operador `&`
El **y** es un operador binario que resulta en verdad solo si ambos valores son verdad.

| Entrada   | Resultado |
|:---------:|:---------:|
| `F & F`   | `F`       |
| `V & F`   | `F`       |
| `F & V`   | `F`       |
| `V & V`   | `V`       |

#### Operador `=`
El **igual** es un operador binario que da como resultado verdad solo si ambos valores son iguales y del mismo tipo.

**Para valores booleanos**:

| Entrada   | Resultado |
|:---------:|:---------:|
| `F = F`   | `V`       |
| `V = F`   | `F`       |
| `F = V`   | `F`       |
| `V = V`   | `V`       |

**Para valores numéricos**:

| Entrada   | Resultado |
|:---------:|:---------:|
| `1 = 1`   | `V`       |
| `1 = 47`  | `F`       |
| `99 = -5` | `F`       |
| `-22 = -22` | `V`     |

#### Operador `<>`
El **distinto** es un operador binario que resulta en verdad solo si ambos valores son diferentes y del mismo tipo.

**Para valores booleanos**:

| Entrada   | Resultado |
|:---------:|:---------:|
| `F <> F`  | `F`       |
| `V <> F`  | `V`       |
| `F <> V`  | `V`       |
| `V <> V`  | `F`       |

**Para valores numéricos**:

| Entrada     | Resultado |
|:-----------:|:---------:|
| `1 <> 1`    | `F`       |
| `1 <> 47`   | `V`       |
| `99 <> -5`  | `V`       |
| `-22 <> -22`| `F`       |

#### Operador `<`
El **menor** es un operador binario que resulta en verdad solo si el primer valor es menor que el segundo.

| Entrada   | Resultado |
|:---------:|:---------:|
| `1 < 1`   | `F`       |
| `1 < 47`  | `V`       |
| `99 < -5` | `F`       |
| `-22 < -22` | `F`     |

#### Operador `>`
El **mayor** es un operador binario que resulta en verdad solo si el primer valor es mayor que el segundo.

| Entrada   | Resultado |
|:---------:|:---------:|
| `1 > 1`   | `F`       |
| `1 > 47`  | `F`       |
| `99 > -5` | `V`       |
| `-22 > -22` | `F`     |

#### Operador `<=`
El **menor o igual** resulta en verdad si el primer valor es menor o igual que el segundo.

| Entrada   | Resultado |
|:---------:|:---------:|
| `1 <= 1`  | `V`       |
| `1 <= 47` | `V`       |
| `99 <= -5`| `F`       |
| `-22 <= -22` | `V`    |

#### Operador `>=`
El **mayor o igual** resulta en verdad si el primer valor es mayor o igual que el segundo.

| Entrada   | Resultado |
|:---------:|:---------:|
| `1 >= 1`  | `V`       |
| `1 >= 47` | `F`       |
| `99 >= -5`| `V`       |
| `-22 >= -22` | `V`    |


[Operadores ⬆](#operadores)


<br> 


## Aritméticos

Los operadores aritméticos producen valores numéricos enteros como resultado, en función de las entradas.

| Sintaxis | Función                  |
|:--------:|:------------------------:|
| `+`      | Adición, Suma            |
| `-`      | Sustracción, Resta       |
| `*`      | Producto, Multiplicación |
| `/`      | División                 |

---

## Asignación

Los operadores de asignación se utilizan para definir el tipo de dato de una variable o para asignarle un valor.

| Sintaxis | Función       |
|:--------:|:-------------:|
| `:`      | Declaración de tipo |
| `:=`     | Asignación de valor |

---

### Operador `:`

El `:` se utiliza para definir el tipo de dato de una variable.

| Utilización                        |
|:----------------------------------:|
| `(nombre_variable) : (tipo_de_dato)`|

---

### Operador `:=`

El `:=` se emplea para asignar un valor a una variable, respetando su tipo de dato.

| Utilización                           |
|:-------------------------------------:|
| `(nombre_variable) := (valor_a_dar)`  |

> El valor puede ser un valor explícito o el valor de otra variable.


[Operadores ⬆](#operadores)


<br> 


## Encadenamiento

Al igual que en matemáticas, en programación se pueden formar expresiones utilizando valores y operadores para encadenar operaciones.

Ejemplo con numeros

    Si se quiere sumar el doble de 9 con la mitad de 16, se debe hacer

    2 * 9 + 16 / 2 , esto da como resultado 26

Ejemplo con booleanos

    Si se quiere saber si dos valores son verdaderos o un tercero negado es verdadero se deb hacer

    V & F | ~ F , esto da como resultado V

Ejemplo con numeros y booleanos

Normalmente se realizan operaciones aritmeticas y a esos resultados se aplican operadores logicos correspondientes de manera que el resultado final sean valores booleanos que reflejen un estado

    Se quiere saber si el doble de 10 es menor a la mitad de 34

    2 * 10 < 34 / 2 = V

El resultado de lo anterior seria falso si no fuera problema el echo de que no queda claro el orden de las operaciones, para eso se utilizan los ( )

[Operadores ⬆](#operadores)


<br> 

## Paréntesis

Los paréntesis son fundamentales ya que establecen la **prioridad** al resolver un encadenamiento de operaciones. Como se explicó antes, en algunas situaciones es necesario especificar el orden de resolución para lograr una operación correcta y evitar confusiones.
> [!IMPORTANT]  
> **IMPORTANTE**: Cada paréntesis de apertura `(` debe tener su correspondiente paréntesis de cierre `)`.

Ejemplo:

    Se quiere saber si el doble de 10 es menor a la mitad de 34

    ( 2 * 10 ) < ( 34 / 2 ) = V , el resultado es F

Ahora queda claro que primero deben resolverse las operacuones aritméticas y luego las lowgicas

La utilización de parentesis permite realizar encadenamiento de operaciones mas complejas

Por ejemplo

    Se quiere saber si dos valores son V o si es V la negación de un tercero o el valor de un cuarto

    ( F & V ) | ( ( ~ V ) | V ), el resultado es V

[Operadores ⬆](#operadores)

[:house:](#indice)



  <br>



## **Variables dato**

Una variable es un espacio de memoria donde se guarda algun valor que representa cierto dato, este espacio se representa para el programador con el nombre que se le da a la variable y a traves de la utilización del nombre se puede acceder al valor para leerlo o modificarlo


 <br>


## Declaración

Para declarar variables se necesita crear el segmento de variables escribiendo la palabra clave **variables**, este segmento no puede ser creado en cualquier lugar, revisar el apartado de [secciones](#secciones), ahí se detalla si en una seccion pueden existir variables dato (en general siempre es antes de un comenzar) 

Los tipos posible de variables son:
- numero: para representar numeros enteros
- boolean: para representar valores lógicos, verdadero (V) o falso (F)

La creación de la variable sigue la siguiente estructura

    variables
        nombreDeLaVariable : tipoDeVariable

Se pueden crear la cantidad que se necesiten

    variables
        nombre1 : tipo1
        nombre2 : tipo2
        nombre3 : tipo2
        nombre4 : tipo1

Si son del mismo tipo pueden declararse juntas separadas por una ","

    variables
        nombre1, nombre4 : tipo1
        nombre2, nombre3 : tipo2

[Variables dato ⬆](#variables-dato)


 <br>


## Operaciones

Como se definió previamente, las variables representan valores, por lo tanto, podemos realizar operaciones con ellas.

### Tipos de Operaciones

Las operaciones con variables se dividen en dos grandes grupos:

1. **Operaciones de Lectura**: Involucran la obtención del valor de una variable.
2. **Operaciones de Escritura**: Involucran la asignación o actualización del valor en una variable.

### Lectura

Para utilizar el valor de una variable, basta con colocar el nombre de la variable en el lugar donde debería ir el valor que esta representa.

    Por ejemplo:
    
        Si se quiere sumar dos numeros, siendo uno la variable num1 y otro la variable num 2 lo que se debe hacer es

        num1 + num2

    Otro ejemplo:
        Si se quiere asegurar que dos variables booleanas, siendo una estado1 y otra estado2, sean verdaderas lo que se debe hacer es

        estado1 & estado2

### Escritura

Para la escritura de un valor en una variable se debe poner la variable a escribir o reescribir su valor luego la sintaxis de asignacion ( := ) y a continuacion el valor explicito o las operaciones que den como resultado un valor, siempre respetando los tipos de dato

    Por ejemplo:

        Si se quiere guardar en la variable resultado el doble de una variable, lo que se debe hacer es

        resultado := 2 * ( nombreDeLaVariable )

        o bien como la multiplicacion es distributiva

        resultado := ( nombreDeLaVariable ) * 2
    
    Otro ejemplo:

        Si se quiere guardar el valor apuesto a la verificacion de si una variable numerica es mayor o igual a otra, lo que se debe hacer es

        validacionOpuesta := ~ ( n1 >= n2 )

        o bien se puede descomponer la tarea dos pasos

        validacionOpuesta := ( n1 >= n2 )

        validacionOpuesta := ~ validacionOpuesta
> [!IMPORTANT]     
> IMPORTANTE: la variable a ser escrita puede ser leida para el calculo del valor a escribir en ella ya que primero se calcula el valor final a escribir y luego se guarda


[Variables dato ⬆](#variables-dato)

[:house:](#indice)



  <br>



## **Instrucciones**

Dentro de la sintaxis del lenguaje se encuentran las instrucciones que permiten realizar determinadas tareas/acciones

Estas se dividen en
- [Control](#control)
- [Estado](#estado)
- [Accion](#accion)
- [Desplazamiento](#desplazamiento)
- [Comunicacion](#comunicacion)
- [Generacion](#generacion)


 <br>


## Control

### Instrucciones de Control

Las instrucciones de control son fundamentales, ya que permiten que se ejecute cierto código o no, lo que permite que un programa reaccione dependiendo de ciertos valores o circunstancias.

#### Tipos de Instrucciones de Control

Las instrucciones de control se dividen en dos grupos:

1. **No Iterativas**: Estas instrucciones solo ejecutan el código que les sigue una única vez.
2. **Iterativas**: Estas instrucciones pueden ejecutar el código que les sigue una o más veces.

##### Instrucciones de Control

| Sintaxis                | Iterativa |
|-------------------------|-----------|
| si ( condición/es )     | No        |
| sino                    | No        |
| mientras ( condición/es )| Sí        |
| repetir ( número )      | Sí        |


<br>

### Instruccion si

La instruccion si se utiliza para habilitar o no la ejecución del bloque de código que este identado debajo de esta, este solo se ejecutara una vez si y solo si el resultado de la condición que acompaña al si sea verdadera

####Estructura del si

    si ( condicion )
        bloque
        de codigo
        a ejecutar

Un ejemplo de uso del si es guardar el maximo entre dos numeros

    si ( n1 > n2 )
        max := n1
    si ( n2 > n1 )
        max := n2

<br>

### Instruccion sino

La instrucción sino solo se puede utilizar si previamente existe una instrucción si, ya que esta actúa en consecuencia del si. El sino se utiliza para habilitar la ejecución del bloque de codigo que este identado debajo de este si, solo si la condición que evalua el si resultó falsa

####Estructura del sino

    si ( condicion )
        bloque
        de codigo
        a ejecutar
    sino
        bloque
        de codigo
        a ejecutar

Optimizando el máximo entre dos números

    si ( n1 > n2 )
        max := n1
    sino
        max := n2

No hace falta verificar si n2 es mayor a n1 ya que la primera condicion de dar falso significa que n2 es igual o mayor a n1, en el caso de no querer escribir en max un valor si n1 = n2, entonces se puede usar otro si

    si ( n1 > n2 )
        max := n1
    sino
        si ( n2 > n1 )
            max := n2

Otra variante con el mismo efecto es

    si ( n1 > n2 )
        max := n1
    sino
        si ( n1 <> n2 )
            max := n2

<br>

### Instrucción mientras

La instrucción mientras se utiliza para ejecutar cierto bloque de código que esté indentado debajo de esta tantas veces como la condición que evalua el mientras de verdad, en caso contrario no ejecuta el codigo y sigue con lo que este por fuera

Estructura del mientras

    mientras ( condicion )
        bloque
        de codigo
        a ejecutar

Un ejemplo es multiplicar un numero por si mismo mientras no supere un máximo o se multiplique un máximo de 5 veces

    mientras ( ( n < max ) | ( cont < 5 ) )
        n := n * n
        cont := cont +1

<br>

### Instrucción repetir

La instrucción repetir se utiliza para ejecutar cierto bloque de código que se encuentre identado debajo de esta tantas veces como lo indique la variable o valor explícito que presigue a la instrucción

Estructura del repetir

    repetir ( cantidad )
        bloque
        de codigo
        a ejecutar

Un ejemplo es calcular la potencia de cierto numero

    repetir exponente
        res := res * base

[Instrucciones ⬆](#instrucciones)


<br> 


## Estado

Las instrucciones de estado son las que devuelven un dato que representa el estado de cierta característica del robot con respecto al mapa o a su inventario.

Respecto del mapa, existen las siguientes instrucciones:

| Sintaxis                   | Tipo de dato que devuelve | Descripción                                            |
|----------------------------|---------------------------|-------------------------------------------------------|
| PosAv                      | número                    | El número representa la avenida actual del robot.     |
| PosCa                      | número                    | El número representa la calle actual del robot.       |
| HayFlorEnLaEsquina        | booleano                  | El booleano representa si hay una flor en la esquina actual. |
| HayPapelEnLaEsquina       | booleano                  | El booleano representa si hay un papel en la esquina actual.  |

Respecto del inventario, existen las siguientes instrucciones:

| Sintaxis               | Tipo de dato que devuelve | Descripción                                              |
|------------------------|---------------------------|---------------------------------------------------------|
| HayFlorEnLaBolsa      | booleano                  | El booleano representa si hay una flor en el inventario. |
| HayPapelEnLaBolsa     | booleano                  | El booleano representa si hay un papel en el inventario.  |


[Instrucciones ⬆](#instrucciones)


 <br>


## Acción

Las instrucciones de acción son las que permiten al robot la interacción de su inventario con respecto al mapa y viceversa.

Existen las siguientes instrucciones:

| Sintaxis         | Acción                                                           |
|------------------|------------------------------------------------------------------|
| tomarFlor        | Toma una flor de la esquina actual y la guarda en el inventario. |
| tomarPapel       | Toma un papel de la esquina actual y lo guarda en el inventario. |
| depositarFlor    | Deposita una flor del inventario en la esquina actual.           |
| depositarPapel   | Deposita un papel del inventario en la esquina actual.           |

>[!IMPORTANT]
> IMPORTANTE: de no existir el elemento para la accion ( flor o papel ) el resultado es un error

[Instrucciones ⬆](#instrucciones)


 <br>


## Desplazamiento

Para el desplazamiento del robot en el mapa, existen las siguientes instrucciones:

| Sintaxis              |
|-----------------------|
| mover                 |
| derecha               |
| Pos(avenida, calle)   |

>[!NOTE]
> Tener en cuenta que los desplazamientos tienen que ser válidos con respecto a las dimensiones del mapa, el área designada al robot y la posición de los otros robots de existir otros

<br>

### Instrucción mover

La instrucción **mover** se utiliza para desplazar al robot una posición en la dirección que se encuentre mirando.

| Dirección  | Posición resultado                  |
|------------|------------------------------------|
| arriba     | avenidaActual + 1, calleActual     |
| derecha    | avenidaActual, calleActual + 1     |
| abajo      | avenidaActual - 1, calleActual     |
| izquierda  | avenidaActual, calleActual - 1     |


<br>

### Instrucción derecha

La instrucción **derecha** se utiliza para cambiar la dirección en la que se encuentra mirando el robot por la consecutiva en sentido horario.

| Dirección base | Dirección resultado |
|----------------|---------------------|
| arriba         | derecha             |
| derecha        | abajo               |
| abajo          | izquierda           |
| izquierda      | arriba              |

<br>

### Instrucción Pos

La instrucción **Pos** se utiliza para ubicar al robot en un par (avenida, calle) determinado.

| Sintaxis                            |
|-------------------------------------|
| Pos(numeroDeAvenida, numeroDeCalle) |


Ejemplos

    Pos( 1, 33 ) resulta en que el robot ahora se encuentra en la avenida 1 y calle 33

    Pos( 50, 50 ) resulta en que el robot ahora se encuentra en la avenida 50 y calle 50
    
    Pos( -88, 45 ) resulta en error ya que el numero de avenida debe estar dentro del rango 1 - 100

[Instrucciones ⬆](#instrucciones)


 <br>


## Comunicación

La comunicación es la transferencia de mensajes hacia el usuario o entre robots.

### Instrucciones

| Sintaxis        | Descripción                                           |
|------------------|-------------------------------------------------------|
| **Informar**     | Envía un mensaje informativo al usuario.              |
| **EnviarMensaje**| Envía un mensaje a otro robot.                        |
| **RecibirMensaje**| Permite al robot recibir un mensaje de otro robot.   |

> [!IMPORTANT]
> Las instrucciones EnviarMensaje y RecibirMensaje son utilizadas en el módulo de concurrente de la materia Taller de programación. No es necesario entender para qué funcionan si estas cursando la materia EPA o CADP

<br>

### Instruccion Informar

### Instrucción Informar

Para la comunicación con el usuario, es decir, para mostrar información en pantalla, se utiliza la instrucción **Informar**.

| Sintaxis                             | Descripción                                              |
|--------------------------------------|----------------------------------------------------------|
| `Informar('cadenaDeCaracteres', valor)` | Muestra en pantalla un mensaje que puede incluir texto y un valor. |

>[!NOTE]
> El primer parametro no es necesario, puede no utilizarse. El segundo parámetro es un valor explícito o variable de cualquier tipo

Ejemplo de uso

    Informar( 16 )
    Informar( 'minimo', cantMin )
    Informar( V )
    Informar( floresJuntadas )

<br>

### Instrucción EnviarMensaje

Esta instrucción se utiliza para enviar un valor a un receptor determinado, siendo una variable robot el receptor.

| Sintaxis                                 | Descripción                                             |
|------------------------------------------|---------------------------------------------------------|
| `EnviarMensaje(valor, nombreVariableRobot)` | Envía un `valor` a un robot específico identificado por `nombreVariableRobot`. |


- **Asincronía:** Esta instrucción es asincrónica, es decir, se ejecuta y continúa la ejecución del código. Al emisor del mensaje no le afecta si el receptor está esperando o no el mensaje.
- **Parámetro de entrada:** El primer parámetro es una variable donde se guardará el valor que se envió en el mensaje. Esta variable debe ser del mismo tipo que el valor enviado.

> [!NOTE]
> El primer parámetro es un valor explícito o variable de cualquier tipo

Ejemplo de uso

    EnviarMensaje( 16, robot1 )
    EnviarMensaje( min, trabajador )
    EnviarMensaje( V, organizador )

<br>

### Instrucción RecibirMensaje

Esta instrucción se utiliza para recibir un valor de un emisor determinado o no determinado, siendo una variable robot el emisor.

| Sintaxis                                           | Emisor             |
|---------------------------------------------------|--------------------|
| `RecibirMensaje(variableReceptora, nombreEmisor)` | Específico         |
| `RecibirMensaje(variableReceptora, *)`            | Cualquiera         |

#### Descripción

- **Sincronía:** Esta instrucción es sincrónica, es decir, hasta no recibir el mensaje esperado, no continúa la ejecución del código.
- **Parámetro de entrada:** El primer parámetro es una variable donde se guardará el valor que se envió en el mensaje. Esta variable debe ser del mismo tipo que el valor enviado.

Ejemplo de uso

    RecibirMensaje( numAvenida, coordinador )
    RecibirMensaje( continuar, jefe )

Si no se especifica un emisor puntual el robot que ejecuta la instrucciÓn quedara esperando un mensaje de cualquier emisor en el caso de que no haya ninguno en la cola de mensaje del robot

Ejemplo de uso

    RecibirMensaje( codigo, * )
    RecibirMensaje( parar, * )

[Instrucciones ⬆](#instrucciones)


 <br>


## Random

Sobre generación, existe una única instrucción para generar valores de tipo número aleatorios dentro de un rango indicado.

| Sintaxis                                          |
|---------------------------------------------------|
| `Random(variableReceptora, valorMinimo, valorMaximo)` |

### Descripción

- **Función:** Esta instrucción genera un número aleatorio y lo asigna a `variableReceptora`, el cual estará dentro del rango definido por `valorMinimo` y `valorMaximo`.

>[!NOTA]
>El `valorMinimo` debe ser menor que el `valorMaximo`; de lo contrario, se generará un error. Estos valores pueden ser explícitos o variables.

Ejemplo de uso

    Random( avRandom, 1, 50 )
    Random( cant, 10, max )

[Random⬆](#random)

[:house:](#indice)



  <br>



## **Secciones**

Un programa en este lenguage se constituye de secciones que se encargan cada una de definir un aspecto del programa. A saber: 
- [programa](#programa)
- [procesos](#procesos)
- [areas](#areas)
- [robots](#robots)
- [variables](#variables)
- [comenzar y fin](#comenzar-y-fin)


 <br>


### Programa

Esta es la seccion donde se le asigna un nombre al programa

Estructura

    programa nombre_del_programa

El nombre del programa puede estar constituido por:

- Letras minúsculas y MAYÚSCULAS
- Números
- Guiones "-" medios y "_" bajos

Ejemplo de uso

    programa ejercicio_1
    programa TP1-E3

[Secciones ⬆](#secciones)


 <br>


### Procesos

Esta es la sección donde se crean módulos, estos pueden tener o no parámetros

Estructura

    procesos
        proceso nombreDelModulo( parametros )

        variables
            declaracion de
            variables locales
            al modulo
        
        comenzar
            algoritmo
            que realiza
            el modulo
        fin

> [!NOTE]
> - Los modulos pueden no necesitar comunicacion de datos, en ese caso se crea el modulo sin parametros solo indicando el nombreDelModulo
> - Los modulos pueden no necesitar variables locales, en ese caso no se crea la seccion de variables

El nombreDelModulo es lo que permite el llamado al modulo, en otras palabras lo que permite que se ejecute el codigo dentro de este

Para una comunicacion de datos entre el algoritmo del modulo y el lugar donde se lo llama se utilizan los parametros

A los parametros en la creacion del modulo se los denomina parametros formales y a los parametros en el llamado al modulo se los denomina parametros actuales

### Parámetros

#### Parámetros Formales

Un parámetro formal tiene la siguiente declaración:

```tipoDeParametro nombreDelParametro : tipoDeDato```


Un parámetro puede ser de dos tipos:

- **E:** entrada
- **ES:** entrada/salida

##### Tipo E

El tipo **E** significa que el parámetro solo es para comunicar información hacia el módulo.

##### Tipo ES

El tipo **ES** significa que el parámetro es para comunicar información hacia el módulo y, a su vez, devolver información hacia el exterior del módulo.

- El nombre del parámetro funciona como una variable en la cual se carga el valor dado en el llamado y/o se devuelve el valor al llamado.
- El tipo de dato define el tipo de variable.

Si el módulo requiere más de un parámetro, estos se separan con `;`.

---

#### Parámetros Actuales

Los parámetros actuales son los que envían la información hacia el módulo y/o reciben la información que este devuelva.

- En el caso de que el parámetro formal sea de tipo **E**, el actual correspondiente puede ser bien un valor explícito o una variable.
- En el caso de que el parámetro formal sea de tipo **ES**, el actual correspondiente solo puede ser una variable, ya que en ella se guarda la devolución del módulo.

Si el módulo tiene más de un parámetro, estos se separan con `,`.

---

#### Vinculación de Parámetros Formales y Actuales

Los parámetros formales y actuales se vinculan por la posición. En otras palabras, el primer formal se empareja con el primer actual, el segundo formal con el segundo actual, y así sucesivamente.

En el llamado al módulo debe existir igual cantidad de parámetros que en la creación de este, y los tipos de datos que representa cada uno deben corresponder con su respectivo en términos de posición.

Ejemplos de uso

    procesos
        proceso sumarEsquinasVaciasCalle( ES cantidad: numero )
        variables
            aux: numero
        comenzar
            aux:= 0
            si ( ~( HayFlorEnLaEsquina | HayPapelEnLaEsquina ) )
                    aux:= aux +1
            repetir 99
                mover
                si ( ~( HayFlorEnLaEsquina | HayPapelEnLaEsquina ) )
                    aux:= aux +1
            cantidad:= cantidad + aux
        fin

        proceso calcularMaximo( E n: numero; ES max: numero )
        comenzar
            si ( n > max )
                max:= n
        fin

        proceso hacerCuadrado3
        comenzar
            repetir 4
                repetir 3
                    mover
                derecha
        fin

Dentro de un modulo puede llamarse a otros módulos, de esta manera se produce un anidamiento de módulos que es positivo siempre y cuando se consiga una separación de tareas que aumente la legibilidad y reusabilidad del codigo

Ejemplo de uso

    procesos
        proceso juntarFlores
        comenzar
            mientras HayFlorEnLaEsquina
                tomarFlor
        fin

        proceso recorrerCalles( E cantCalles: numero )
        variables
            sigCa, i: numero
        comenzar
            sigCa:= PosCa
            i:= 0
            repetir cantCalles
                i:= i +1
                repetir 99
                    juntarFlores
                    mover
                juntarFlores
                si ( i < cantCalles )
                    sigCa:= sigCa +1
                    Pos( 1, sigCa)
        fin

[Secciones ⬆](#secciones)


 <br>


## Áreas

Las áreas son regiones del mapa donde las avenidas y calles que componen cada una de dichas áreas solo pueden estar incluidas en una única declaración de estas.

Estructura

    areas

        nombreArea : tipoDeArea( region )

El nombre del área es lo que permite mas adelante referenciar esta definición en la asignación de áreas de un robot

Existen tres tipos de áreas:

- AreaC : área compartida
- AreaP : área privada
- AreaPC : área parcialmente compartida

### AreaC

Este tipo es para definir que cierta región es compartida por los robots, esto quiere decir que a todos los robots se le asiganara esta área, consecuentemente quiere decir que podran interactuar en esta region

### AreaP

Este tipo es para definir que cierta region es de un único robot, esto quiere decir que solo a un robot se le asignara esta área, consecuentemente este es el único que podra interactuar en esta región

### AreaPC

Este tipo es para definir que cierta region es compartida por al menos dos robots, esto quiere decir que se le asigna a al menos 2 robots 

La region es un cuadrado que se delimita por dos conjuntos:

- Avenida y calle inicial
- Avenida y calle final

En ambos casos la avenida y calle estan incluidas en la region

Se declara de la siguiente manera

    ( avenidaInicial, calleInicial, avenidaFinal, calleFinal )

Ejemplo de uso

    areas
        area1 : AreaC( 1, 1, 1, 1 )
        zonaPrivada : AreaP( 11, 1, 100, 10 )
        areaTrabajo : AreaPC( 50, 50, 55, 60 )

> [!IMPORTANT]
> Los valores iniciales deben ser menores o iguales a los valores finales, ademas se debe respetar el tamaño del mapa

[Secciones ⬆](#secciones)


 <br>


## Robots

Esta es la sección donde se definene los algoritmos que un cierto tipo de robot tendra que hacer durante la ejecucion del programa

> IMPORTANTE: dos tipos de robot pueden tener los mismos algoritmos y ejecutarlos perfectamente, pero en el caso que dos tipos de robot tengan exactamente las mismas tareas lo mas adecuado es tener dos variables robots del mismo tipo, cada una trabajando "independientemente"

Estructura

    robots

        robot nombreTipoRobot
        variables
            en el caso
            de que se necesiten
        comenzar
            instrucciones
            que componen
            el algoritmo para
            este tipo de robot
        fin

> [!NOTE]
> El nombreTipoRobot debe ser unico

### Declaración del Tipo de Robot

Al declarar el tipo de robot, es importante tener en cuenta lo siguiente:

- **Sección de Variables:** 
  - La sección de variables solo debe ser agregada si el robot necesita variables numéricas y/o booleanas. En caso contrario, no es necesario incluir esta sección.

#### Estructura de Comienzo ... Fin

El apartado **comenzar ... fin** es similar a la sección de **[procesos](#procesos)**. En este bloque, se crea el algoritmo del robot, que se utilizará durante la ejecución del programa para que el robot realice tareas como:

- Moverse
- Interactuar con el mapa
- Realizar operaciones aritméticas/lógicas
- Comunicarse con otros elementos

#### Uso Óptimo de Tipos de Robot

Normalmente, un tipo de robot se define para una labor específica que puede englobar tareas asociadas a esta labor. Para hacer un uso óptimo de los tipos de robot, es recomendable descomponer el problema en labores y asignar diferentes robots para distribuir la carga de manera eficiente. Esto permite responder a la problemática de forma más efectiva.

Ejemplo de uso

    robots
        robot corredorAvenida
        comenzar
            mientras (PosCa < 100)
                mover
            Informar('LlegueALaCalle',100)
        fin

        robot contadorFlores
        variables
            flores: numero
        comenzar
            flores:= 0
            repetir 9
                repetir 15
                    juntarFlores(flores)
                    mover
                juntarFlores(flores)
                Pos(PosAv + 1, 1)
        fin

[Secciones ⬆](#secciones)


 <br>


## Variables

# Sección de Variables del Robot

Esta es la sección donde se declaran las variables para un determinado tipo de robot.

## Variables Robot

Las variables robot son las encargadas de ejecutar los algoritmos que se definen en el programa.

> [!NOTE]
> No puede haber dos variables robot con el mismo nombre, este debe ser único

El nombreTipoRobot es el nombre con el cual se definió un tipo de robot en la seccion de [robots](#robots)

Ejemplo de uso

    variables
        robot1: trabajador
        padre: recolector
        rJefe: coordinador


[Secciones ⬆](#secciones)


 <br>


## Comenzar y fin

Esta es la seccion donde se le asignan las areas correspondientes a cada variable robot y ademas su correspondiente posicionamiento inicial en el mapa

Estructura

    comenzar

        AsignarArea( nombreVariableRobot, nombreArea )
        Iniciar( nombreVariableRobot, avenida, calle )
    
    fin

> [!NOTE]
> El nombreArea debe estar definido correctamente en la seccion de [áreas](#areas) de igual manera que el nombreVariablesRobot debe estar definido correctamente en la sección de [variables](#variables). Los valores indicados en el iniciar deben pertener a alguna de de las áreas asignadas previamente

A una variable robot se le pueden asignar múltiples areas (siempre y cuando se respete el tipo de área definido) pero únicamente se incia en un punto del mapa

Ejemplo de uso:

    comenzar
        AsignarArea( robot4, cuadrante )
        AsignarArea( robot4, puntoPartida )
        AsignarArea( jefe, areaJefe )

        Iniciar( jefe, 1, 1 )
        Iniciar( robot4, 50, 1 )
    fin

[Secciones ⬆](#secciones)

[:house:](#indice)



  <br>



