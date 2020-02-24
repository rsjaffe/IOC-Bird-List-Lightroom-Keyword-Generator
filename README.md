# IOC Bird List Lightroom Keyword Generator

The [International Ornithologist’s Union](https://int-ornith-union.org/) produces and regularly updates a [taxonomy of world birds and recommended English names](https://www.worldbirdnames.org/). This list is provided in several different formats, including XML. Since XML is easy to transform into different file formats, I have produced an xslt program (birdsbyorder.xsl) to transform it into a keyword list for lightroom with all the birds of the world, by order and family. For those preferring a listing by family only, I produced an xslt program (birdsbyfamily.xsl) for that too. By using this list to tag photos, not only will the photo have the name of the bird, but also its scientific name, family, and order—the list by family only automatically marks the order of the family. Also included in each list are other taxonomic categories, also automatically applied, such as kingdom, phylum, class, clades, subclass, etc. These lists are free.

To run the program an XSLT processor is needed. [Saxon-HE](http://saxon.sourceforge.net/) is free and highly recommended for this task.

To produce the keyword file, download the latest XML version of the Master List from [worldbirdnames.org](https://www.worldbirdnames.org/), place it in the same directory as the XSL file, then run the transform program using the batch file provided.
