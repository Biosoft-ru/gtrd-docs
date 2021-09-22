docker build . -t gtrd-docs-img
docker run --name gtrd-docs -v $(pwd):/gtrd-docs -w /gtrd-docs --rm gtrd-docs-img make html
