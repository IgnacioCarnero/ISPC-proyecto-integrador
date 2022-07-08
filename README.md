# MySql

<h2> ¿Que es MySQL? </h2>

MySQL es un sistema de gestión de bases de datos relacional desarrollado bajo licencia dual: Licencia pública general/Licencia comercial por Oracle Corporation y está considerada como la base de datos de código abierto más popular del mundo y una de las más populares en general junto a Oracle y Microsoft SQL Server, todo para entornos de desarrollo web. Este sistema gestor de base de datos es multiplataforma, es decir que funciona en diferentes sistemas operativos, tales como: Linux, Windows o Unix.

<h2> ¿Cómo trabaja este SGBD? </h2>

MySQL se basa en un modelo cliente-servidor. El núcleo de MySQL es el servidor MySQL. El mismo está disponible como un programa independiente para su uso en un entorno de red cliente-servidor y como una biblioteca que puede ser incrustada (o enlazada) en aplicaciones independientes. Posee un gestor de conexiones que le permite interactuar con estas aplicaciones, que pueden estar desarrolladas en diferentes lenguajes (PH, Python, .NET, etc) pero las sentencias que se utilizan en MySQL pertenencen al lenguaje SQL.
La arquitectura de este SGBD comprende, además de conectores clientes para interactuar con programas cliente, una interfaz, un optimizador, utilidades y servicios como pueden ser backups, seguridad, MySQL Shell, Workbench. En sus niveles mas bajos encontramos los motores de almacenamiento: InnoDB, MyISAM, Merge, Memory, Cluster, Example, y por ultimo su sistema de ficheros y particiones.

<h2> Características principales de MySQL </h2>
MySQL permite almacenar y acceder a los datos a través de múltiples motores de almacenamiento, incluyendo InnoDB, CSV y NDB. MySQL también es capaz de replicar datos y particionar tablas para mejorar el rendimiento y la durabilidad. Los usuarios de MySQL no tienen que aprender nuevos comandos; pueden acceder a sus datos utilizando comandos SQL estándar.MySQL permite almacenar y acceder a los datos a través de múltiples motores de almacenamiento, incluyendo InnoDB, CSV y NDB. MySQL también es capaz de replicar datos y particionar tablas para mejorar el rendimiento y la durabilidad. Los usuarios de MySQL no tienen que aprender nuevos comandos; pueden acceder a sus datos utilizando comandos SQL estándar. 
MySQL está escrito en C y C++ y es accesible y está disponible en más de 20 plataformas, como Mac, Windows, Linux y Unix. El RDBMS soporta grandes bases de datos con millones de registros y admite muchos tipos de datos, como enteros con o sin signo de 1, 2, 3, 4 y 8 bytes de longitud; FLOAT; DOUBLE; CHAR; VARCHAR; BINARY; VARBINARY; TEXT; BLOB; DATE; TIME; DATETIME; TIMESTAMP; YEAR; SET; ENUM; y tipos espaciales OpenGIS. También se admiten tipos de cadena de longitud fija y variable.
Para la seguridad, MySQL utiliza un sistema de privilegios de acceso y contraseñas encriptadas que permite la verificación basada en el host. Los clientes de MySQL pueden conectarse a MySQL Server utilizando varios protocolos, incluyendo sockets TCP/IP en cualquier plataforma. MySQL también admite una serie de programas cliente y de utilidad, programas de línea de comandos y herramientas de administración como MySQL Workbench.
Entre las ramificaciones de MySQL, también conocidas como forks, se encuentran las siguientes:
*Drizzle, un sistema ligero de gestión de bases de datos de código abierto en desarrollo basado en MySQL 6.0.
*MariaDB, un popular sustituto de MySQL desarrollado por la comunidad que utiliza las API y los comandos de MySQL.
*Percona Server con XtraDB, una versión mejorada de MySQL conocida por su escalabilidad horizontal.

SQL (Structured Query Language) o lo que es lo mismo un lenguaje de consultas o lenguaje declarativo de acceso a bases de datos relacionales que permite efectuar consultas con el fin de recuperar información de interés de una base de datos y hacer cambios sobre la base de datos.

Bases de datos objeto-relacionales: se basan en el estándar SQL 99. En ese estándar se añade a las bases relacionales la posibilidad de almacenar procedimientos de usuario, triggers, tipos definidos por el usuario, consultas recursivas, bases de datos OLAP, tipos LOB,...
Las últimas versiones de la mayoría de las clásicas grandes bases de datos relacionales (Oracle, SQL Server, Informix, ...) son objeto relacionales.
