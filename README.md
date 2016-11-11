# KINC.R
![alt tag](https://raw.githubusercontent.com/SystemsGenetics/KINC/version1/KINClogo.png)

##Installation
* Clone this repository. 
* Start R inside of the clonde directory
* load the devtools library:   library('devtools')
* Install the package:   install()
* Now you can use KINC.R by importing the library:  library('KINC.R')

## Examples
The KINC.R package provides supplementary R functions to assist with analysis of files used and generated by KINC.  An important function is the RMT() function which perform Random Matrix Theory (RMT) analysis of a network.  While KINC has been written for gene co-expression networks, the RMT function can be used with any similarity matrix.  The matrix must be in a data frame with at least three columns named: Source, Target and Similarity.  The Source and Target columns indicate the edge in the network adn the Similarity contains the similarity score.  The RMT() function will perform RMT analysis on a similarity matrix that it constructs from the network file.  

### Example 1 -- Traditional KINC network
Below is an example from traditional KINC networks:

``` R
library('KINC.R')

# Import the network from a file.
colNames = c('Source', 'Target', 'Similarity', 'interaction')
colClasses = c('character', 'character', 'numeric', 'character')
net = read.table("KINC_traditional_net.txt", 
  header=TRUE, sep="\t", colClasses=colClasses, col.names=colNames)
 
# Now perform RMT analysis on the loaded network
RMT(net)
```
In this example, the network file being read from a file was generated using the traditional KINC method and is named 'KINC_traditional_net.txt'. It is tab-delimited and has four columns: source, target, similarity score and interaction type.

### Example 2 -- Clustered KINC Network

``` R
library('KINC.R')

# Import the network from a file.
colNames = c("Source", "Target", "Similarity", "Interaction", "Cluster", "Num_Clusters",
  "Cluster_Samples", "Missing_Samples", "Cluster_Outliers", "Pair_Outliers", 
  "Too_Low", "Samples");
colClasses = c("character", "character", "numeric", "character", "numeric", 
  "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "character") 
net = read.table("KINC_clustered_net.txt", 
  header=TRUE, sep="\t", colClasses=colClasses, col.names=colNames)

# Now perform RMT analysis on the loaded network
RMT(net)
