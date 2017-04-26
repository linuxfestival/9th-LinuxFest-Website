# 9th Amirkabir Linux Festival Website 
[![Stories in Ready](https://badge.waffle.io/LinuxFest/LinuxFestival9.png?label=ready&title=Ready)](https://waffle.io/LinuxFest/LinuxFestival9)
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

### Updating
Here is a git workflow for updating your fork (or downloaded copy) to the latest version:
```
git remote add upstream https://github.com/gdg-x/hoverboard.git
git fetch upstream
git merge upstream/master # OR git merge upstream/develop
# resolve the merge conflicts in your editor
git add . -u
git commit -m 'Updated to the latest version'
```

### Roadmap :rocket:

[TODO]

##### General workflow
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Make your changes
4. Run the tests, adding new ones for your code if necessary
5. Commit your changes (`git commit -am 'Added some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create new Pull Request

:book: Read complete [contributing guide](CONTRIBUTING.md).


### Contributors :sparkles:
See [list of contributors](https://github.com/LinuxFest/LinuxFestival9/graphs/contributors).


### License

Project is published under the [MIT license](LICENSE.md).  
Feel free to clone and modify repo as you want, but don't forget to add reference to authors :)
