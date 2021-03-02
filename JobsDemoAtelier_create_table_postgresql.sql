-- DROP TABLE public.demo_extraction;

CREATE TABLE public.demo_extraction
(
    string jsonb
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.demo_extraction
    OWNER to pcscolpivot;
	
	

-- DROP TABLE public.demo_extraction2;

CREATE TABLE public.demo_extraction2
(
    "codePeriode" character varying COLLATE pg_catalog."default",
    "codeFormation" character varying COLLATE pg_catalog."default",
    "arbreFormation" jsonb
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.demo_extraction2
    OWNER to pcscolpivot;