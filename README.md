# Payme Mobile

[![CocoaPods](https://img.shields.io/cocoapods/v/Stripe.svg?style=flat)](http://cocoapods.org/?q=author%3Astripe%20name%3Astripe)
[![CocoaPods](https://img.shields.io/cocoapods/l/Stripe.svg?style=flat)](https://github.com/stripe/stripe-ios/blob/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/p/Stripe.svg?style=flat)](https://github.com/stripe/stripe-ios#)

El SDK iOS de Payme Mobile crea una estupenda experiencia de pago en tu aplicación iOS asi como una implementación rápida y sencilla. Proporcionamos pantallas y elementos de interfaz de usuario vanguardistas que se pueden utilizar de forma simple para registrar los datos asociados a pagos y/o consumos realizados en los comercios. Consulte nuestra [Guía de integración de iOS](https://www.alignet.com/) para comenzar.

En esta parte podemos optar por manejarlo en un enlace dentro de la web de alignet, otra opcion seria linkearlo a un archivo dentro de la carpeta documentacion subido en el mismo proyecto github o tambien colocarlo directamente en este archivo readme.

### Características

**Seguridad**: El sdk cuenta con seguridad de datos con encriptacion etc. Manejo de datos sensibles en el app. Para mayor información, por favor visite nuestra [Guia de seguridad Payme](https://www.alignet.com/).

**Carrusel de Tarjetas**: Este componente permite agregar tarjetas de diversas entidades utilizadas ampliamente por los comercios registrados en Alignet.

**Escaneo de Tarjetas**: Permite escanear tarjetas con relieves usando card.io. Vea nuestra sección [Tarjeta IO] (# tarjeta-io).

Tenemos que colocar las características mas resaltantes de la librería.

## Lanzamiento

Recomendamos que instales Payme.Mobile iOS usando un gestor de dependencias como cocoapods o carthage. Si lo prefieres puedes agregar manualmente el sdk a tu proyecto, por favor utilizar la ultima version disponible.

Si prefieres descargar una version anterior puedes elegir una del listado de tags que corresponda a una version anterior instalada en tu proyecto. La instrucción de como usar el sdk en un proyecto iOS lo podrá encontrar en la siguiente ubicación.

Por ahora esta en construcción ...

## Requisitos

El SDK de Payme Mobile en iOS es compatible con aplicaciones en iOS 9 y versiones posteriores, y requiere de Xcode 9 para generar el compilado de fuentes.

## Empezando

### Instalación

### CocoaPods

[CocoaPods](https://cocoapods.org) es un manejador de dependencias para proyectos con Cocoa. Tu puedes instalarlo con el siguiente comando:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1+ es requerido para utilizar Payme Mobile 1.0+.

Para integrar Payme Mobile en tu proyecto xcode usando cocoapods, especifique lo siguiente en su `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'PaymeMobile'
end
```

Entonces, correr la siguiente instrucción:

```bash
$ pod install
```

### Ejemplo
