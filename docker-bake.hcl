target "docker-metadata-action" { }

target "build" {
    inherits = ["docker-metadata-action"]
    context = "./"
    dockerfile = "Dockerfile"
    platforms = [
        "linux/amd64",
        "linux/arm/v6",
        "linux/arm/v7",
        "linux/arm64",
        "linux/386"
    ]
    annotations = [ "manifest,index:org.opencontainers.image.description=Docker image for Jose Tiago Macara Coutinho's modbus-proxy" ]
}
