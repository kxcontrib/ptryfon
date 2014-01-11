\d .csv

batchSave:{[fileHS;tableT;batchSizeN]
  (neg fh:hopen fileHS) first csv 0: 1#tableT; // Write out column names
  i:0;
  while[i<tc:count tableT; (neg fh) each 1 _ csv 0: tableT i+til min (batchSizeN;tc-i); i+:batchSizeN];
  hclose fh;
  }

\d .
