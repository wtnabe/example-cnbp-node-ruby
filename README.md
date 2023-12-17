## An example repo for Vite and Sinatra app with Cloud Native Buildpacks

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

Prepare the credentials for each platform so that they can be used in docker command.

#### Heroku

[Container Registry & Runtime \(Docker Deploys\) \| Heroku Dev Center](https://devcenter.heroku.com/articles/container-registry-and-runtime#getting-started)

```
$ heroku container:login
```

```
$ docker tag example-cnbp-node-ruby registry.heroku.com/<app>/web
$ docker push registry.heroku.com/<app>/web
$ heroku container:release web -a <app>
```

### Cloud Run

[クイックスタート: Docker コンテナ イメージを Artifact Registry に保存する  \|  Artifact Registry のドキュメント  \|  Google Cloud](https://cloud.google.com/artifact-registry/docs/docker/store-docker-container-images?hl=ja)

```
$ gcloud auth configure-docker <location>-central1-docker.pkg.dev
```

```
$ docker tag example-cnbp-node-ruby <location>-docker.pkg.dev/<project>/<repos>/<image>
$ docker push <location>-docker.pkg.dev/<project>/<repos>/<image>
$ gcloud run deploy <service> --image <location>-docker.pkg.dev/<project>/<repos>/<image>
```
