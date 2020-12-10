import numpy as np
import pandas as pd


def read_iris_data():
    data_set = pd.read_csv("../data/iris.csv")
    X = data_set.drop("class", axis=1)
    Y = data_set['class']
    # print(Y)
    return np.array(X, dtype=float), np.array(Y, dtype=str)
