import numpy as np
import pandas as pd

def preprocess():
    data_file_path = "../../data/mimic-share/mimic-iii-data/NOTEEVENTS.csv"
    df = pd.read_csv(data_file_path)
    text = df['TEXT'].values.tolist()
    print("this is text", text[0:10])
    ## df is of dimensions 2083180 x 11
    ## columns are 'ROW_ID', 'SUBJECT_ID', 'HADM_ID', 'CHARTDATE', 'CHARTTIME', 'STORETIME', 'CATEGORY', 'DESCRIPTION', 'CGID', 'ISERROR', 'TEXT'
    
if __name__ == "__main__":
    preprocess()
