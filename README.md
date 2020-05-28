# charts.cplace.io (collaborationFactory.github.io/helm-charts)
[Helm](https://helm.sh) repo index for cplace related charts.

The repository can be added using:
```console
$ helm repo add cplace https://charts.cplace.io/helm-charts/
```

The charts repos can be found outside of this index by going to
* [helm-cplace](https://github.com/collaborationFactory/helm-cplace)
* [helm-elasticsearch](https://github.com/collaborationFactory/helm-elasticsearch)

## Required GitHub Configuration

* This GitHub repository should be public.
* GitHub Pages must be enabled and configured to the master/docs directory.
* GitHub deploy key with write capability needs to be added.
    * Will be used by GitHub actions in the chart repositories to push new versions to this Helm chart repository.