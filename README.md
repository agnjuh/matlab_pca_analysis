Principal Component Analysis (PCA) — (Computing project 2)

This repository contains two scripts developed for Computing Project 2 in the Mathematical and computational methods bioinformatics-focused course module (programme title: Stratified/Personalised Medicine at Ulster University). The project involves implementing PCA from first principles to explore patterns in simulated gene expression data measured across a group of patients. The goal is to visualise high-dimensional biological data in reduced dimensions while preserving variance trends.

Project Structure Part A – manual PCA in 2D

Script: pca_preprocessing.m
Objective: implement PCA from scratch on a 2×25 matrix containing measurements of two genes across 25 patients.
Tasks include:
constructing the gene expression matrix.
centering the data on the origin.
evaluating variances along rotated axes (0 to π/2).
identifying the axis with the maximum variance.
plotting the first principal component and its orthogonal axis.
Output: three scatter plots (original data, centered data, and principal axes overlay).
Part B – Covariance matrix and eigen decomposition in 5D

Script: pca_visualization.m
Objective: apply PCA to a 5×25 matrix containing five gene measurements across 25 patients.
Tasks include:
constructing the matrix and centering it by row-wise means.
calculating a 5×5 covariance matrix.
performing eigen decomposition using:
[V, D] = eig(cov_matrix);
identifying the two components (eigenvectors) with the largest eigenvalues (variance).
projecting the 5D data onto the top 2 principal components.
visualising the projection in a 2D scatter plot.

Cite: Juhász, Á. J. (2018). Principal Component Analysis (PCA) – Computing Project 2 [Course project]. Ulster University. https://github.com/agnjuh/pca_microarray_analysis

@misc{juhasz2018pca, author = {Juhász, Ágnes Judit}, title = {Principal Component Analysis (PCA) – Computing Project 2}, year = {2018}, howpublished = {\url{https://github.com/agnjuh/pca_microarray_analysis}}, note = {Course project submitted as part of a bioinformatics computing module}, institution = {Ulster University} }
