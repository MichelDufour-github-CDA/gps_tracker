# gps_tracker

A new Flutter project.

Application qui permet de connaitre sa géolocalisation (Longitude & latitude).

###  Création d'un new projet
````
flutter create gps_tracker
````
# Installation des dépendances

- Ajout des permissions au préalable. Pour ce faire, ouvrez le fichier AndroidManifest.xml (situé sous android/app/src/profile & android/app/src/debug)
 ````
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
````

- Ajout du package geolocator
https://pub.dev/packages/geolocator

````
flutter pub add geolocator
````

- Ajout du routeur
````
flutter pub add go_router
````

- Ajout du cubic
````
flutter pub add flutter_bloc
````

### Lancement du projet
````
flutter run -d chrome --web-browser-flag "--disable-web-security"
````
