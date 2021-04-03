# quantum-tutorial

## How to run the examples ?

### 1. Get this repository 
clone this repository with git (https://git-scm.com/):
```bash
git clone https://github.com/agostinodd/quantum-tutorial.git 
```

or with the GitHub CLI(https://cli.github.com/)
```bash
gh repo clone agostinodd/quantum-tutorial
```

or download the .Zip package and unzip it.

### 2. Install Docker
The installation instructions for the different plattforms for can be found here:

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

### 3. Build the Dockerfile
To build the dockerfile, go to the path where the Dockerfile is located and execute following command:

```bash
docker build -t quantum-tutorial  .
```

On Ubuntu the command has to be executed with the right privileges:

```bash
sudo docker build -t quantum-tutorial  .
```

This step can take a while to perform.
The steps from 1 - 3 must be performed only once.

### 4. Start the container
 Now to start the tutorial environment, execute the following command:

```bash
docker run -p 8888:8888 quantum-tutorial
```
 
On Ubuntu it has to be done with the right privileges:

```bash
sudo docker run -p 8888:8888 quantum-tutorial
```

### 4. Access the environment
open your webbrowser and open:

```url
http://localhost:8888
```