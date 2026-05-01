# multi-stage docker build with and without distroless image

## Overview

This project demonstrates the benefits of using multi-stage Docker builds combined with distroless images to significantly reduce container image size. By optimizing the build process and removing unnecessary runtime dependencies, we achieve a dramatic reduction from 994 MB to just 3.18 MB.

## Key Benefits

- **Reduced Image Size**: Distroless images eliminate unnecessary files and dependencies
- **Faster Deployments**: Smaller images deploy and pull faster
- **Improved Security**: Fewer packages mean fewer vulnerabilities
- **Multi-stage Optimization**: Separates build and runtime stages for lean production images






# without multi-stage docker build


![alt text](image.png)

image size is 994 MB

# with multi-stage docker build + distroless image

![alt text](image-1.png)

image size is 3.18 MB



