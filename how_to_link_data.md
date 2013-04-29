# How to: Linking resources from two datasets

## Why would one want to map datasets ?

## How can it be done ?
There are many tools that can be used to link resources across two datasets. Choosing one of them will depend on the type of resources you want to link and the preferences in term of interfaces.

### Mapping ontologies
There are many systems designed to establish mapping between concepts from ontologies, an overview of some of them can be found on the ontology matching web site [1]. 
When looking for a specific matcher it is interesting to look at the results of the Ontology Alignment Evaluation Initiative (OAEI) [2].
This competition is held yearly to benchmark different systems against a set of varied datasets.
The outcome is an overview of which matchers performs best on which type of dataset (among those that have been submitted to the benchmark).

### Mapping instances
In contrary to mapping ontologies, which involves aspects such as looking at the concept usages or their place in a tree, mapping instances is simpler. 
The problem typically consists in comparing the description of a resource with the description of another one and take a decision based on their similarity.
Considering a set of resources from a dataset "Source" and a set of resources from another dataset "Target", the comparison will be run on the cross-product of all resources from "Source" against all the resources from "Target".
There is again a variety of tools able to perform such comparisons. The Silk Link Discovery Framework (SILK) [3] and LInk discovery framework for MEtric Spaces (LIMES) [4] are two link discovery platforms that are doing all these comparisons in an optimised way. Both make use of tricks to prune the list of comparisons to make and shorten the processing time. They are provided with a graphical interface to parameter the software and they can be executed on desktop computers as well as servers running Hadoop.

An alternative is to generate the links manually if the URI are intuitive. For example, it is easy to guess the DBpedia resource associated to any Wikipedia page because they use the same identifiers, only the namespace changes.
This makes it possible to guess that the resource associated to Amsterdam is <http://nl.dbpedia.org/page/Amsterdam> because its Wikipedia page is <http://nl.wikipedia.org/wiki/Amsterdam>. Intuitive URIs are very convenient for developpers that can leverage them to generate links across datasets without having to use any linker software.


## Let's go!

The service <http://linker.sindice.com> provided by the semantic search engine is an hosted version of SILK that let everyone 


[1]: http://www.ontologymatching.org/projects.html
[2]: http://oaei.ontologymatching.org/
[3]: http://www4.wiwiss.fu-berlin.de/bizer/silk/
[4]: http://aksw.org/Projects/LIMES.html
