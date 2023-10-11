---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "Resource docker_registry_image - terraform-provider-docker"
subcategory: ""
description: |-
  Manages the lifecycle of docker image in a registry. You can upload images to a registry (= docker push) and also delete them again
---
<!-- Bug: Type and Name are switched -->
# Resource (docker_registry_image)

Manages the lifecycle of docker image in a registry. You can upload images to a registry (= `docker push`) and also delete them again

## Example Usage

Build an image with the `docker_image` resource and then push it to a registry:

```terraform
resource "docker_registry_image" "helloworld" {
  name          = docker_image.image.name
  keep_remotely = true
}

resource "docker_image" "image" {
  name = "registry.com/somename:1.0"
  build {
    context = "${path.cwd}/absolutePathToContextFolder"
  }
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String) The name of the Docker image.

### Optional

- `insecure_skip_verify` (Boolean) If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
- `keep_remotely` (Boolean) If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
- `triggers` (Map of String) A map of arbitrary strings that, when changed, will force the `docker_registry_image` resource to be replaced. This can be used to repush a local image

### Read-Only

- `id` (String) The ID of this resource.
- `sha256_digest` (String) The sha256 digest of the image.