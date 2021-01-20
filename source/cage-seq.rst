********
CAGE-seq
********
.. warning:: under construction

xx - suffix in the table name


Database schema
----------------


.. kroki::  ./diagrams/cage-seq.puml png
   :caption: Database schema for CAG-seq data


.. list-table:: Table cage_peaks_xx
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id
     - int(10)
     - primary
     - TSS (peak) identifier
   * - chrom
     - varchar(10)
     - ?
     - chromosome according to coresponding genome build (xx) 
       Example: chr1. 
   * - start
     - int(10)
     - 
     - start of CAGE peak region
   * - end
     - int(10)
     - 
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
     - mul
     - gene symbol for CAGE peaks that are promoters 
   * - enhancer_id
     - int(10)
     - mul
     - id of enhancer that includes this CAGE peak
   * - fantom5_id
     - mediumtext ``-> varchar``
     - ind
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
