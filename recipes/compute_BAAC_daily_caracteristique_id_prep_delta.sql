SELECT *
  FROM "baac_daily_caracteristique_id_prep"
  WHERE "Num_Acc" NOT IN (
      SELECT DISTINCT "Num_Acc" "baac_daily_caracteristique_id_prep_distinct_stock"
  )