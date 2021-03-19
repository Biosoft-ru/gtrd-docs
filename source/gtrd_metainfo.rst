
********
GTRD meta-info
********
.. warning:: under construction

Database schema
---------

.. kroki::  ./diagrams/gtrd_metainfo.puml png
   :caption: Database schema for meta-info (other types of experimental designs are ignored in the diagram due to similarity)
   
Table annotation_queue
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id int(11) NO PRI NULL auto_increment
     - 
     - 
     - DEESCRIPTION
   * - gse_id varchar(10) NO NULL
     - 
     - 
     - DEESCRIPTION
   * - species varchar(100) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - path varchar(100) NO NULL
     - 
     - 
     - DEESCRIPTION
   * - status varchar(10) NO NULL
     - 
     - 
     - DEESCRIPTION
   * - annotator varchar(20) YES NULL
     - 
     - 
     - DEESCRIPTION

Table annotator
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - exp_id varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - annotator_name mediumtext YES NULL
     - 
     - 
     - DEESCRIPTION

Table cells
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id int(11) NO PRI NULL auto_increment
     - 
     - 
     - DEESCRIPTION
   * - title mediumtext NO NULL
     - 
     - 
     - DEESCRIPTION
   * - cellosaurus_id varchar(60) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - species varchar(32) NO NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_ontology_id varchar(40) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - exp_factor_ontology_id varchar(60) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - uberon_id varchar(255) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - source tinytext YES NULL
     - 
     - 
     - DEESCRIPTION
   * - source_id varchar(255) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_type_id varchar(255) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - brenda_id varchar(30) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - other_id varchar(30) YES NULL
     - 
     - 
     - DEESCRIPTION

Table chip_experiments
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - antibody mediumtext YES NULL
     - 
     - 
     - DEESCRIPTION
   * - specie varchar(50) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - treatment mediumtext YES NULL
     - 
     - 
     - DEESCRIPTION
   * - control_id varchar(20) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_id int(11) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - experiment_type enum('chip_control','bio_control','normal','unspecified') NO unspecified
     - 
     - 
     - DEESCRIPTION
   * - tf_uniprot_id varchar(10) YES NULL
     - 
     - 
     - DEESCRIPTION

Table chipexo_experiments
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - antibody mediumtext YES NULL
     - 
     - 
     - DEESCRIPTION
   * - specie varchar(50) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - treatment mediumtext YES NULL
     - 
     - 
     - DEESCRIPTION
   * - control_id varchar(20) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_id int(11) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - experiment_type enum('chipexo_control','bio_control','normal','unspecified') YES NULL
     - 
     - 
     - DEESCRIPTION
   * - tf_uniprot_id varchar(10) YES NULL
     - 
     - 
     - DEESCRIPTION

     
Table atac_experiments
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - organism varchar(50) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - treatment text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_id int(11) YES NULL
     - 
     - 
     - DEESCRIPTION

Table dnase_experiments
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - organism varchar(50) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - treatment text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_id int(11) YES NULL
     - 
     - 
     - DEESCRIPTION

Table faire_experiments
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - organism varchar(50) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - treatment text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_id int(11) YES NULL
     - 
     - 
     - DEESCRIPTION

Table hist_experiments
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - antibody mediumtext YES NULL
     - 
     - 
     - DEESCRIPTION
   * - specie varchar(50) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - treatment mediumtext YES NULL
     - 
     - 
     - DEESCRIPTION
   * - control_id varchar(20) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_id int(11) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - experiment_type enum('hist_control','bio_control','normal','unspecified') NO unspecified
     - 
     - 
     - DEESCRIPTION
   * - target varchar(20) YES NULL
     - 
     - 
     - DEESCRIPTION

Table external_refs
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO MUL NULL
     - 
     - 
     - DEESCRIPTION
   * - external_db varchar(10) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - external_db_id text YES NULL
     - 
     - 
     - DEESCRIPTION
     
Table mnase_experiments
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - organism varchar(50) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - treatment text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_id int(11) YES NULL
     - 
     - 
     - DEESCRIPTION

Table classification
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - name varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - parent varchar(20) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - title text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - description text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - level int(1) YES NULL
     - 
     - 
     - DEESCRIPTION

Table tfmod_rna_experiments
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - organism varchar(50) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - experiment_type enum('tf_down','tf_up','control') YES NULL
     - 
     - 
     - DEESCRIPTION
   * - control_id varchar(20) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - tf_uniprot_id varchar(10) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - treatment text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cell_id int(100) YES NULL
     - 
     - 
     - DEESCRIPTION

Table geo_series_rejected
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - geo_series_id varchar(10) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - reject_reason text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - annotator text YES NULL
     - 
     - 
     - DEESCRIPTION
     
Table hub
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - input varchar(20) YES MUL NULL
     - 
     - 
     - DEESCRIPTION
   * - input_type varchar(30) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - output varchar(20) YES MUL NULL
     - 
     - 
     - DEESCRIPTION
   * - output_type varchar(30) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - specie varchar(50) YES NULL
     - 
     - 
     - DEESCRIPTION

Table polymerase
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(10) NO PRI NULL
     - 
     - 
     - DEESCRIPTION

Table properties
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(20) NO MUL NULL
     - 
     - 
     - DEESCRIPTION
   * - property_name varchar(20) YES NULL
     - 
     - 
     - DEESCRIPTION
   * - property_value mediumtext YES NULL
     - 
     - 
     - DEESCRIPTION

Table uniprot
~~~~~~~~~~
DESCRIPTION

.. list-table::
   :header-rows: 1
   :widths: 25, 20, 10, 55

   * - Field
     - Type
     - Index
     - Description
   * - id varchar(10) NO PRI NULL
     - 
     - 
     - DEESCRIPTION
   * - name text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - protein_names text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - gene_names text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - protein_name text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - gene_name text YES NULL
     - 
     - 
     - DEESCRIPTION
   * - species varchar(30) YES MUL NULL
     - 
     - 
     - DEESCRIPTION
   * - status enum('reviewed','unreviewed') YES NULL
     - 
     - 
     - DEESCRIPTION
   * - cached_tf_class varchar(30) YES NULL
     - 
     - 
     - DEESCRIPTION
