# GitHub Action for Puppet Parser Validate

This Action for the [Puppet](https://puppet.com/) configuration management
system enables you to syntax check your Puppet code.

## Usage

An example workflow for syntax checking Puppet code is shown below. It will
run the `puppet parser validate` command with the path to the files you want
to test as `args`.

```yaml
name: Puppet Parser Validate

on: [push]

jobs:
  puppet-parser-validate:

    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout
      uses: actions/checkout@v2

    - name: puppet-parser-validate
      uses: irasnyd/puppet-parser-validate-action@master
      with:
        args: ./
```

## License

The [Dockerfile](Dockerfile) and associated scripts and documentation in this
project are released under the [MIT License](LICENSE).

Container images built with this project include third party materials. See
[THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
