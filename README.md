# quantum-tutorial

## Die Testumgebung starten?

### 1. Das Repository auf den Lokalen PC kopieren
Das Repository mit Git (https://git-scm.com/) klonen:
```bash
git clone https://github.com/agostinodd/quantum-tutorial.git 
```

oder mit dem GitHub CLI(https://cli.github.com/)
```bash
gh repo clone agostinodd/quantum-tutorial
```

oder das .zip Packet runterladen und entpacken.

### 2. Docker installierewn
Die Installationsanleitung für alle Plattformen sind unter:

Windows:
```url
https://docs.docker.com/docker-for-windows/install/
```
   
Linux:
```url
https://docs.docker.com/engine/install/
```

Mac:
```url
https://docs.docker.com/docker-for-mac/install/
```

### 3. Das Dockerfile builden
Um das Dockerfile zu builden muss man sich in dem Ordner befinden, wo das Dockerfile ist. Dann muss folgender befehl ausgeführt werden:

```bash
docker build -t quantum-tutorial  .
```

Auf Ubuntu muss dieser befehl, je nach konfiguration, mit den richtigen Rechten ausgeführt werden:

```bash
sudo docker build -t quantum-tutorial  .
```

Dieser Schritt kann einen Moment dauern.
Die Schritte 1 - 3 müssen einmalig ausgeführt werden.

### 4. Starten des Containers
Jetzt kann der erstellt Container wie folgt erstellt werden:

```bash
docker run -p 8888:8888 quantum-tutorial
```
 
Auf Ubuntu muss dieser befehl, je nach konfiguration, mit den richtigen Rechten ausgeführt werden:

```bash
sudo docker run -p 8888:8888 quantum-tutorial
```

### 4. Öfffnen der Umgebung
Jetzt kann der Webbrowser unter:

```url
http://localhost:8888
```

geöffnet werden. Dort befinden alle notebooks.