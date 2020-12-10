import numpy as np


def generate_2_dimension_data(category_means, category_number, k_number):
    cov = [[0.1, 0], [0, 0.1]]
    data = []
    for i in range(k_number):
        for index in range(category_number[i]):
            data.append(
                np.random.multivariate_normal([category_means[i][0], category_means[i][1]], cov).tolist())
    return np.array(data)
