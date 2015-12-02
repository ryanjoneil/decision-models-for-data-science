Decision Models for Data Science
================================

This is a work in progress about making better decisions using data science and optimization models. It explores linear, logical, and stochastic models for making decisions about complex problems. It uses data to understand the structure and uncertainty inherent to these problems.

We haven't figured out the license yet, and will likely be trying to get it published once we're a little farther along. So please be respectful of that and ask if you have questions about using or referencing the content here.

Authors
-------
Both of us are PhD candidates in Systems Engineering & Operations Research at George Mason University.

* Ryan J. O'Neil
* Saba Neyshabouri 

Reading the book on nbviewer
----------------------------

You can use Jupyter's [http://nbviewer.ipython.org/](http://nbviewer.ipython.org/) to simply read the latest version of the content. This won't allow you to run the examples unless you download the notebooks. If you want to do that, we suggest you follow the instructions in the next section.

Links for the current chapters:

* Part 1.  Linear Models: Understanding relationships between decisions
  - [Chapter 1. Considering the world algebraically](http://nbviewer.ipython.org/github/ryanjoneil/decision-models-for-data-science/blob/master/ipynb/Chapter%201%20-%20Representing%20the%20world%20algebraically.ipynb)
  - [Chapter 2. Basic linear models](http://nbviewer.ipython.org/github/ryanjoneil/decision-models-for-data-science/blob/master/ipynb/Chapter%202%20-%20Basic%20linear%20models.ipynb)
  - Chapter 3. Linear decision making
  - [Chapter 4. Data fitting & classification](http://nbviewer.ipython.org/github/ryanjoneil/decision-models-for-data-science/blob/master/ipynb/Chapter%204%20-%20Data%20fitting%20%26%20classification.ipynb)

Reading the book locally
------------------------

You'll need [Docker](https://www.docker.com/). Once you have it, download the latest `dmfds` image:

```bash
docker pull ryanjoneil/dmfds
```

Clone the `decision-models-for-data-science` repository. Then run Jupyter notebook using the `dmfds` Docker image inside its directory.

```bash
git clone https://github.com/ryanjoneil/decision-models-for-data-science.git
cd decision-models-for-data-science
docker run -d --name=dmfds-ipynb2 -p 9876:8888 -v $(pwd)/ipynb:/home/dmfds/ipynb:rw ryanjoneil/dmfds
```

Now open [http://localhost:9876/](http://localhost:9876/) in a web browser.

