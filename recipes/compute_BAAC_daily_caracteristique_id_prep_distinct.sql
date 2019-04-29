SELECT 
    "__topn_btmm"."dateAccident" AS "dateAccident",
    "__topn_btmm"."jour" AS "jour",
    "__topn_btmm"."mois" AS "mois",
    "__topn_btmm"."an" AS "an",
    "__topn_btmm"."com" AS "com",
    "__topn_btmm"."filename" AS "filename",
    "__topn_btmm"."dep" AS "dep",
    "__topn_btmm"."agg" AS "agg",
    "__topn_btmm"."int" AS "int",
    "__topn_btmm"."Id BAAC 2002" AS "Id BAAC 2002",
    "__topn_btmm"."lum" AS "lum",
    "__topn_btmm"."atm" AS "atm",
    "__topn_btmm"."col" AS "col",
    "__topn_btmm"."heureAccident" AS "heureAccident",
    "__topn_btmm"."Minute" AS "Minute",
    "__topn_btmm"."hrmn" AS "hrmn",
    "__topn_btmm"."Heure" AS "Heure",
    "__topn_btmm"."adr" AS "adr",
    "__topn_btmm"."Coordonnées GPS" AS "Coordonnées GPS",
    "__topn_btmm"."mapping_error" AS "mapping_error",
    "__topn_btmm"."dateHeureDernModFO" AS "dateHeureDernModFO",
    "__topn_btmm"."date" AS "date",
    "__topn_btmm"."Code Unité" AS "Code Unité",
    "__topn_btmm"."Numéro P.V." AS "Numéro P.V.",
    "__topn_btmm"."Num_Acc" AS "Num_Acc",
    "__topn_btmm"."Organisme" AS "Organisme",
    "__topn_btmm"."statutBaac" AS "statutBaac",
    "__topn_btmm"."typeAccident" AS "typeAccident",
    "__topn_btmm"."IdTechniqueFO" AS "IdTechniqueFO",
    "__topn_btmm"."long" AS "long",
    "__topn_btmm"."lat" AS "lat",
    "__topn_btmm"."gps" AS "gps"
  FROM (
    SELECT 
        "__origin_table"."dateAccident" AS "dateAccident",
        "__origin_table"."jour" AS "jour",
        "__origin_table"."mois" AS "mois",
        "__origin_table"."an" AS "an",
        "__origin_table"."com" AS "com",
        "__origin_table"."filename" AS "filename",
        "__origin_table"."dep" AS "dep",
        "__origin_table"."agg" AS "agg",
        "__origin_table"."int" AS "int",
        "__origin_table"."Id BAAC 2002" AS "Id BAAC 2002",
        "__origin_table"."lum" AS "lum",
        "__origin_table"."atm" AS "atm",
        "__origin_table"."col" AS "col",
        "__origin_table"."heureAccident" AS "heureAccident",
        "__origin_table"."Minute" AS "Minute",
        "__origin_table"."hrmn" AS "hrmn",
        "__origin_table"."Heure" AS "Heure",
        "__origin_table"."adr" AS "adr",
        "__origin_table"."Coordonnées GPS" AS "Coordonnées GPS",
        "__origin_table"."mapping_error" AS "mapping_error",
        "__origin_table"."dateHeureDernModFO" AS "dateHeureDernModFO",
        "__origin_table"."date" AS "date",
        "__origin_table"."Code Unité" AS "Code Unité",
        "__origin_table"."Numéro P.V." AS "Numéro P.V.",
        "__origin_table"."Num_Acc" AS "Num_Acc",
        "__origin_table"."Organisme" AS "Organisme",
        "__origin_table"."statutBaac" AS "statutBaac",
        "__origin_table"."typeAccident" AS "typeAccident",
        "__origin_table"."IdTechniqueFO" AS "IdTechniqueFO",
        "__origin_table"."long" AS "long",
        "__origin_table"."lat" AS "lat",
        "__origin_table"."gps" AS "gps",
        ROW_NUMBER() OVER (PARTITION BY "__origin_table"."Num_Acc" ORDER BY "__origin_table"."Id BAAC 2002" ASC) AS "_row_number"
      FROM (
        SELECT *
          FROM "baac_daily_caracteristique_id_prep" "__origin_table"
        ) "__origin_table"
    ) "__topn_btmm"
  WHERE "_row_number" <= (1)