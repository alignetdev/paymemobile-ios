# Payme iOS SDK

[![CocoaPods](https://img.shields.io/badge/cocoapods-1.0.0-red.svg)](http://cocoapods.org/?q=author%3Astripe%20name%3Astripe)
[![CocoaPods](https://img.shields.io/badge/licence-MIT-yellow.svg)](https://github.com/stripe/stripe-ios/blob/master/LICENSE)
[![CocoaPods](https://img.shields.io/badge/plattform-ios-green.svg)](https://github.com/stripe/stripe-ios#)

Payme SDK crea una estupenda experiencia de pago en tu aplicación iOS. Contamos con una implementación rápida y sencilla. Proporcionamos pantallas con elementos de interfaz de usuario de fácil entendimiento que se pueden utilizar de forma simple para registrar el pago de servicios que demande el comercio.

### Características

**Pay-me Wallet**: Es una Billetera digital (Virtual Wallet) que permite comprar en línea con total seguridad guardando, bajo estrictos estándares de seguridad, los datos de pago.

**Carrusel de Tarjetas**: Este componente permite organizar nuestras tarjetas de diversas entidades utilizadas por los comercios registrados con Alignet.

**Escaneo de Tarjetas**: Permite escanear tarjetas con relieves usando card.io.


## Lanzamiento	

Recomendamos que instales Payme SDK usando un gestor de dependencias como cocoapods. Si lo prefieres puedes agregar manualmente el SDK a tu proyecto. La ultima versión disponible la encontraras en la carpeta Librería.

Si necesitas retornar a una versión anterior puedes elegir una del listado de tags que corresponda a la versión requerida. La instrucción de cómo usar el SDK en un proyecto iOS lo podrá encontrar en la guía de integración.

## Requisitos

Payme SDK es compatible con aplicaciones con iOS 9 y versiones posteriores, y requiere de Xcode 10 para ser implementada y utilizada.

## Empezando

### Instalación

### CocoaPods

[CocoaPods](https://cocoapods.org) es un gestor de dependencias para proyectos con Cocoa. Tu puedes instalarlo con el siguiente comando:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1+ es requerido para utilizar Payme SDK 1.0+.

Para integrar Payme SDK en su proyecto xcode usando cocoapods, especifique lo siguiente en su `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'Payme'
end
```

Entonces, correr la siguiente instrucción:

```bash
$ pod install
```

### Integración

Para empezar a integrar Payme Mobile iOS. Por favor, consulte nuestra [Guía de integración iOS](https://github.com/alignetdev/paymemobile-ios/tree/master/Documentacion) para comenzar.
