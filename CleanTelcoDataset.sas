/* Create the dataset */
data work.telco_clean;
    set work.telco_churn;

    /* Fix TotalCharges variable */
    /* Replace blanks with missing and convert to numeric */
    if strip(TotalCharges) = "" then TotalCharges_num = .;
    else TotalCharges_num = input(TotalCharges, 8.);

    /* Drop the original text and rename the numeric */
    drop TotalCharges;
    rename TotalCharges_num = TotalCharges;
run;

/* View structure of cleaned dataset */
proc contents data=work.telco_clean; run;
