#e-com-generator

---
## Usage
`./src/gen_table.sh <GB> <filePath> <outputPath> <defaultHdfsFs`
## Docker
- build the container: 
  - `docker build -t e-com-generator:1.0 .`
- create a container named `ecom` and start a Bash session:
  - `docker run --name ecom --rm -i -t e-com-generator:1.0 bash`
- tag the image with the Dockerhub username
  - `docker login` 
  - `docker tag e-com-generator:1.0 felidsche/e-com-generator:1.0`