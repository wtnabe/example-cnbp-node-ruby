## An example repos for Vite and Sinatra app with Cloud Native Buildpacks

### Prerequisite

 * pack command
     * [pack · Cloud Native Buildpacks](https://buildpacks.io/docs/tools/pack/cli/pack/)
     * [buildpacks/pack: CLI for building apps using Cloud Native Buildpacks](https://github.com/buildpacks/pack)
 * [Node\.js](https://nodejs.org/) ( optional )
 * [Ruby Programming Language](https://www.ruby-lang.org/en/)

### How to Use

#### for building image

```
pack build example-cnbp-node-ruby -B heroku/builder:22
```

#### for developing

```
bundle
./bin/vite install
gem install bundler
foreman start -f Procfile.dev
```

### Deploy

#### Heroku

```
docker tag example-cnbp-node-ruby registry.heroku.com/<app>/web
docker push registry.heroku.com/<app>/web
heroku container:release web -a <app>
```

TODO...

see [Container Registry & Runtime \(Docker Deploys\) \| Heroku Dev Center](https://devcenter.heroku.com/articles/container-registry-and-runtime)
