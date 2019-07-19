# CS Notebooks

This repo contains Jupyter notebooks for various AI and Machine Learning experiments, study of algorithms, etc.

## Notebooks

So far, this includes notebooks for:

  * Keras code released as part of the 2018 run of the [fast.ai](https://www.fast.ai/) course
  * Examples taken from Michael Nielson's Neural Networks and Deep Learning course
  * SciKit-Learn examples from Aurélien Géron's _Hands-On Machine Learning with Scikit-Learn and TensorFlow_
  * Solutions for exercises from _Introduction to Algorithms_ (CLRS)

## Scripts

The 'scripts' directory currently contains just one helper script, nbclean.sh, which uses jq to remove intermediate data from a Jupyter notebook. This can be useful for maintaining a clean git history while actively developing notebooks.

## Dependencies

Dependencies can be installed using conda:

    conda env create -f environment.yaml -n cs-notebooks

## License

These notebooks are based on various resources available online, with various licenses.

They are kept here for personal use, and should not be distributed.
