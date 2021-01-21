********
CAGE-seq
********
.. warning:: under construction


CAGE peaks annotation
---------------------

If CAGE peak is located near with known gene TSS then it is annotated as promoter.

Also such peak is annotated with hyperlinks to corresponding transript/gene/protein identifier in the external database.

For each specie its own set of databases is used as shown in table below. 

Column comments: 
 * Database, entity -  database name and correspondin entity type (transript/gene/protein)
 * FANTOM5 - indicates whether references to this database are used in annotation by FANTOM5
 * GTRD, FANTOM5    - indicates whether references to this database are used in GTRD for CAGE peaks imported from FANTOM5
 * GTRD, new peaks  - indicates whether references to this database are used for annotation of new CAGE peaks in GTRD

.. list-table:: 
   :header-rows: 1
   :widths: 15, 20, 10, 10, 10, 35

   * - Species
     - Database, entity 
     - FANTOM5
     - GTRD, FANTOM5
     - GTRD, new peaks
     - Description, comment
   * - Homo sapiens
     - Ensembl, transcript id
     - +
     - +
     - +
     - 
   * - 
     - Ensembl, gene id 
     - +
     - +
     - +
     - ``duplicates cage_promoters2transcripts``?
   * - 
     - Entrez, gene id
     - +
     - +
     - +
     - 
   * - 
     - HGNC, gene id
     - +
     - +
     - +
     - 
   * - 
     - FANTOM5, peak id 
     - +
     - +
     - +
     - ``duplicates cage_peaks_xx.fantom5_id``?
   * -
     - Associated gene name
       Associated gene symbol
       Associated gene synonym
       Source of associated gene
     - +
     - 
     - 
     -

   * - Mus musculus
     - Ensembl, transcript id
     - +
     - +
     - +
     - 
   * - 
     - Ensembl, gene id 
     - +
     - +
     - +
     - ``duplicates cage_promoters2transcripts``?
   * - 
     - Entrez, gene id
     - +
     - +
     - +
     - 
   * - 
     - FANTOM5, peak id 
     - +
     - +
     - +
     - ``duplicates cage_peaks_xx.fantom5_id``?
   * -
     - Associated gene name
       Associated gene symbol
       Associated gene synonym
       Source of associated gene
     - +
     -
     -
     -

   * - Rattus norvegicus
     - Ensembl, gene id
     - +
     - +
     - +
     - 
   * - 
     - Ensembl, transcript id 
     - +
     - +
     - +
     - ``duplicates cage_promoters2transcripts``?
   * -
     - Ensembl_gene_name
       Augustus_gene_name
       RefSeq_transcript_id
       Geneid_gene_name
       Genscan_gene_name
       EST_gene_name
     - +
     - ?
     -
     -

Database schema
----------------

Results of analyses of CAGE-seq data presented as a set of SQL tables.

These tables are populated for each species, where xx is suffix that specifies specie and genome build.

.. list-table:: 
   :header-rows: 1
   :widths: 15, 20, 40

   * - Table suffix
     - Species
     - Genome build
   * - hg38
     - Homo sapiens, human
     - https://www.ncbi.nlm.nih.gov/assembly/GCF_000001405.26
   * - mm10
     - Mus musculus, mouse
     - https://www.ncbi.nlm.nih.gov/assembly/GCF_000001635.20
   * - rn6
     - Rattus norvigicus, rat
     - https://www.ncbi.nlm.nih.gov/assembly/GCF_000001895.5


ER diagram
~~~~~~~~~~
.. kroki::  ./diagrams/cage-seq.puml png
   :caption: Database schema for CAGE-seq data


Table cage_peaks_xx
~~~~~~~~~~~~~~~~~~~
These tables describes CAGE peaks (TSSs - Transcription Start Sites).

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id
     - int(10)
     - primary
     - internal CAGE peak (TSS) identifier
   * - chrom
     - varchar(10)
     - +
     - chromosome according to coresponding genome build (xx) 
       Example: chr1. 
   * - start
     - int(10)
     - +
     - start of CAGE peak region
   * - end
     - int(10)
     - +
     - end of CAGE peak region
   * - strand
     - char(1)
     - 
     - TSS strand (+ or -)
   * - abs_summit
     - int(10)
     - 
     - start of the representative TSS position
   * - name
     - mediumtext ``-> varchar``
     - ?
     - name (ID) of the CAGE peak
       Example: hg19::chr1:564571..564600,+;hg_1.1
   * - type
     - varchar(255)
     - ?
     - type of CAGE peak: promoter or enhancer
   * - organism
     - varchar(50)
     -
     - organism. ``? remove``
   * - gene_symbol
     - mediumtext ``-> varchar``
     - +
     - gene symbol for CAGE peaks that are promoters 
   * - enhancer_id
     - int(10)
     - +
     - id of enhancer that includes this CAGE peak
   * - fantom5_id
     - mediumtext ``-> varchar``
     - +
     - CAGE peak id in FANTOM 5
   * - version
     - int(10)
     -
     - CAGE peak version
   * - source
     - varchar(255)
     - ?
     - Source (database or project) from which this CAGE peak was imported.
       Possible values: FANTOM 5

Table cage_promoters_annotation_xx
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Some CAGE peaks are annotated as promoters. Corresponding links are stored in cage_promoters_annotation_xx tables.

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - peak_id
     - int(10)
     - +
     - internal CAGE peak (TSS) identifier
   * - external_db
     - varchar(30)
     - 
     - External database name
   * - external_db_id
     - mediumtext ``-> varchar``
     - +
     - Corresponding transript/gene/protein identifier in the external database


Table cage_promoters2transcripts_xx
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Some CAGE peaks are annotated as promoters. Tables cage_promoters2transcripts contain distance and id for nearest transcripts (distance <500 bp).

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - peak_id
     - int(10)
     - mul
     - internal CAGE peak (TSS) identifier
   * - ensembl_transcript_id
     - varchar(30)
     - +
     - 
   * - distance
     - int(11)
     - 
     - 

Table cage_enhancers_xx
~~~~~~~~~~~~~~~~~~~~~~~
Some CAGE peaks are joined into enhancers. 

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id
     - int(10)
     - primary
     - internal enhancer identifier
   * - chrom
     - varchar(10)
     - +
     - chromosome according to coresponding genome build (xx) 
       Example: chr1. 
   * - start
     - int(10)
     - +
     - start of enhancer region
   * - end
     - int(10)
     - +
     - end of enhancer region
   * - type
     - varchar(255)
     - 
     - Source (database or project) from which this enhancer was imported.
       Possible values: FANTOM 5
       ``rename to sourse``
   * - name
     - mediumtext ``-> varchar``
     - +
     - name (ID) of the CAGE peak
       Example: chr10:100006233-100006603

Table cage_enhancers2genes_xx
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
These tables describe what genes are potentially regulated by enhancers. 

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - enhancer_id
     - int(10)
     - +
     - internal enhancer identifier
   * - ensembl_gene_id
     - varchar(20)
     - +
     - 
   * - type
     - enum('corr','prox')
     - 
     - type of possible promoter-enhancer interaction
   * - distance
     - int(11)
     -
     - distance between promoter-enhancer, for type 'prox'
   * - corr
     - float
     -
     - expression correlation between promoter-enhancer, for type 'corr'
   * - padj
     - float
     -
     - adjusted P value for expression correlation between promoter-enhancer, for type 'corr'
