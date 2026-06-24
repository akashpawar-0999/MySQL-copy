CREATE TABLE if not exists Samples (
    sample_id INT,
    dna_sequence VARCHAR(255),
    species VARCHAR(100)
)
Truncate table Samples
insert into Samples (sample_id, dna_sequence, species) values ('1', 'ATGCTAGCTAGCTAA', 'Human')
insert into Samples (sample_id, dna_sequence, species) values ('2', 'GGGTCAATCATC', 'Human')
insert into Samples (sample_id, dna_sequence, species) values ('3', 'ATATATCGTAGCTA', 'Human')
insert into Samples (sample_id, dna_sequence, species) values ('4', 'ATGGGGTCATCATAA', 'Mouse')
insert into Samples (sample_id, dna_sequence, species) values ('5', 'TCAGTCAGTCAG', 'Mouse')
insert into Samples (sample_id, dna_sequence, species) values ('6', 'ATATCGCGCTAG', 'Zebrafish')
insert into Samples (sample_id, dna_sequence, species) values ('7', 'CGTATGCGTCGTA', 'Zebrafish')


-- Solution

SELECT sample_id , dna_sequence , species , 
CASE WHEN dna_sequence LIKE 'ATG%' THEN 1 ELSE 0 end AS has_start,
CASE WHEN dna_sequence LIKE '%TAA' OR dna_sequence LIKE '%TGA' OR dna_sequence LIKE '%TAG' THEN 1 ELSE 0 end AS has_stop,
CASE WHEN dna_sequence LIKE'%ATAT%' THEN 1 ELSE 0 end AS has_atat,
CASE WHEN dna_sequence LIKE '%GGG%' THEN 1 ELSE 0 end AS has_ggg
FROM samples
ORDER BY sample_id;