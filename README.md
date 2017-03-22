# Single Cell Reproducible Epigenomics Workflow (SCREW)

A CWL Pipeline and Docker Image for Performing Standard Single-Cell DNA Methylation Analyses

![](logo_design/screw_logo_240.png)

## Synopsis

Single-cell whole-genome bisulfite sequencing (SC-WGBS) is currently the most comprehensive method for investigating single-cell epigenetic regulation, with important applications for understanding stem cell differentiation and oncogenesis. However, it is a very new field, and while a handful of tools have been developed, no standard pipeline or framework for handling this data has been created, despite a number of analyses being common across the studies which have been published so far.

The purpose of this project is to provide a standardised workflow and framework for building workflows for analysing single-cell DNA methylation data. We will do this by wrapping several existing tools to create CWL modules, which we will build into complete example pipelines. All modules will be provided as part of an executable-anywhere Docker image. We will use several existing single-cell DNA methylation data sets, none of which have been interrogated using the full suite of tools currently available.

## Installation

SCREW is a workflow pipeline implemented through a combination of R and Shell scripts and executed through a Common Workflow Language specification. The most straightforward way to use SCREW is through the Docker image available at XXX.

## Usage


## Dependencies

If SCREW is used through Docker, all dependencies will be pre-installed on the image. If building from source, the following pipelines and tools are required for use:

+
+ methpipe (www.github.com/smithlabcode/methpipe)
+
+
+
+
