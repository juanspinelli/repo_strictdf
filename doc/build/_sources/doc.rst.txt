**strictdf**
*********************

**Dockerfile**
======================

Build the dockerfile to create an image

**docker build - - pull - - no-cache -t jupyter_library .**

Once it's done, run this command to create the container

**docker run -d - - name jupyter_library -p 8888:8888 jupyter_library**

.. figure:: _static/7.jpeg
   :align: center

Then go to the browser and open the url localhost:8888 (The token is "jupyter")

**Pip Installation**
====================

pip install strictdf==0.1.0

**Import**
=================

from **strictdfds** import StrictDataFrame


**Create the object**
=====================

df = pd.read_csv("any_df.csv")

sdf = StrictDataFrame(df)

.. figure:: _static/1.jpeg
   :align: center

**Methods**
============

- **sdf.report()**:
    Returns the shape of the df and the total of nulls that were removed

.. figure:: _static/2.jpeg
   :align: center


- **sdf.to_spark()**:
    This method converts pandas df to pyspark df

.. figure:: _static/6.jpeg
   :align: center

**Attributes**
==============

- **sdf.dtypes**
    Analyzes all the columns and returns the type of data that is most repeated in each one.

.. figure:: _static/3.jpeg
   :align: center

- **sdf.old_df**
    Returns the original df

.. figure:: _static/4.jpeg
   :align: center

- **sdf.new_df**
    Returns the df without null values

.. figure:: _static/5.jpeg
   :align: center

**Libraries**
=============

============  ============
**Library**   **Version**
------------  ------------
pandas        1.0.*
pyspark       3.0.1
pytest        5.3.*
strictdf      0.1.0
============  ============

**Test**
========

Use the library:
----------------

- 1) Run the Dockerfile.
- 2) Open the jupyter notebook
- 3) Open the file usando_libreria.ipynb and execute all cells

Verify the unit tests:
----------------------

- 1) Run the Dockerfile.
- 2) **docker exec -it jupyter_library /bin/bash**
- 3) Run **pytest test_main.py -vv**
- 4) Verify the test results.

.. figure:: _static/test.jpeg
   :align: center