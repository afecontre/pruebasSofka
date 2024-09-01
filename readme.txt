
# Instrucciones para Ejecutar Pruebas de Karate

Este proyecto utiliza Karate para ejecutar pruebas de API. A continuación, se detallan los pasos para configurar y ejecutar las pruebas.

## Requisitos Previos

1. **Java**: Asegúrese de tener instalado JDK 11 o superior.
2. **Maven**: Asegúrese de tener Apache Maven instalado y configurado en su sistema.

## Estructura del Proyecto

El proyecto está organizado de la siguiente manera:

```
karate-demo/
├── src/
│   └── test/
│       ├── java/
│       │   └── com/
│       │       └── example/
│       │           └── TestRunner.java
│       └── resources/
│           └── features/
│               ├── login.feature
│               └── signup.feature
├── karate-config.js
├── pom.xml
└── README.txt
```

## Configuración

1. **`karate-config.js`**: Este archivo contiene configuraciones globales para las pruebas de Karate, incluyendo funciones para generar datos aleatorios como nombres de usuario y contraseñas.

2. **`pom.xml`**: El archivo de configuración de Maven incluye la dependencia de Karate para JUnit5.

## Ejecución de Pruebas

Para ejecutar las pruebas, siga estos pasos:

1. **Abrir una Terminal**: Navegue al directorio raíz del proyecto `karate-demo`.

2. **Ejecutar Maven**: Utilice el siguiente comando para ejecutar todas las pruebas:
   ```
   mvn test
   ```

Esto ejecutará todas las pruebas definidas en los archivos `.feature` ubicados en el directorio `src/test/resources/features`.

## Notas

- Asegúrese de que las dependencias en `pom.xml` estén correctamente configuradas y que su entorno tenga acceso a internet para descargar cualquier dependencia que falte.
- Puede personalizar los scripts de prueba y las configuraciones en `karate-config.js` según sus necesidades.
