# GitHub Action for wget

Wraps the wget CLI to be used in GitHub Actions. See also [GitHub Action for curl](https://github.com/marketplace/actions/github-action-for-curl).


## Features
 * make http requests
 * http errors are treated as errors


## Usage

### GitHub Actions
```
on: push
jobs:
  wget:
    runs-on: ubuntu-latest
    steps:
    - name: wget
      uses: wei/wget@v1
      with:
        args: -O sample.html https://httpbin.org/html
```

```
on: push
jobs:
  wget:
    runs-on: ubuntu-latest
    steps:
    - name: wget
      uses: wei/wget@v1
      with:
        args: -qO- https://httpbin.org/get
```

### Docker
```
docker run --rm $(docker build -q .) \
  -qO- https://httpbin.org/get
```


## Original
Wei He is the original creator, but deleted his GitHub account, which means all workflows using this action stopped working, so I decided to re-upload the code.
