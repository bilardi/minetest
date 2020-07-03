# Document development

## Monolingual

### Installation

```sh
git clone https://github.com/bilardi/minetest
cd minetest/docs
pip3 install --upgrade -r requirements.txt # install your dependences
sphinx-quickstart
```

### Usage

For testing the web changes,

```sh
cd minetest/docs
make html
# go to your browser at file://path/of/the/folder/of/minetest/docs/build/html/index.html
```

For testing the pdf changes, check if there are some lines into [conf.py](https://github.com/bilardi/minetest/blob/master/docs/source/conf.py)

```sh
extensions = ['rst2pdf.pdfbuilder']
pdf_documents = [('index', u'rst2pdf', u'Sample rst2pdf doc', u'Your Name'),]
  # index - master document
  # rst2pdf - name of the generated pdf
  # Sample rst2pdf doc - title of the pdf
  # Your Name - author name in the pdf
```

and then type

```sh
cd minetest/docs
sphinx-build -b pdf source build/pdf
open build/pdf/minetest-for-education.pdf
```

## Multilingual - draft

### Installation

It is interesting the [tutorial](https://www.sitepoint.com/fast-multi-language-docs-with-sitepoints-rtdsphinx-php/)

```sh
cd minetest
pip3 install sphinx-intl
git clone https://github.com/sitepoint/rtdsphinx-php multidocs
cd multidocs
pip3 install -r requirements.txt
```

### Usage

For testing the web changes,

```sh
cd minetest/multidocs
bin/update.sh it
```
