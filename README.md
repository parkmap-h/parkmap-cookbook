parkmap Cookbook
=========================

Parkmapの開発するためのvagrant用の仮想マシンをつくるためのChef Cookbookです。

Requirements
------------

* ubuntu 14.10


#### packages


Attributes
----------



Usage
-----

## 動作確認

```
kitchen converge
```

セットアップの詳細は[こちら](http://qiita.com/eielh/items/adb173ffcd6389c12e36)を参照

## 仮想マシン作成

```
vagrant plugin install vagrant-omnibus
gem install berkshelf
berks vendor cookbooks
vagrant up
```

## box作成

```
rake box
```


Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
