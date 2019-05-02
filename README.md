# 9th Amirkabir Linux Festival Website 

⚡️ Live at [linuxfest.ir](https://linuxfest.ir)

Based on [Project Hoverboard](https://github.com/gdg-x/hoverboard) (MIT)

### Setup
:book: [Full documentation](/docs/).

##### Docker-based development environment

If you don't want to bother with the dependencies, you can use the docker container for development.

Build the docker image:

    docker build -t hoverboard .

and execute the commands associated to the docker env in the following documentation:

:book: Read more in [docker docs](/docs/tutorials/docker.md).

:point_right: **[Fork](https://github.com/gdg-x/hoverboard/fork) this repository** and clone it locally.

##### Install dependencies

    npm install
    
Or you can install with Docker container: 
     
    docker run -v "$PWD":/app hoverboard npm install 

##### Start the development server

This command serves the app at `http://localhost:3000` and provides basic URL
routing for the app:

    npm run serve
    
Or you can serve Docker container:

    docker run -v "$PWD":/app hoverboard

:book: Read more in [setup docs](/docs/tutorials/set-up.md).


### Build

This command performs HTML, CSS, and JS minification on the application
dependencies, and generates a service-worker.js file with code to pre-cache the
dependencies based on the entrypoint and fragments specified in `polymer.json`.
The minified files are output to the `build`.

    npm run build

Or you can build in Docker container:

    docker run -v "$PWD":/app hoverboard npm run build

:book: Read more in [deploy docs](/docs/tutorials/deploy.md).
