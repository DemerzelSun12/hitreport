import itertools as it

from matplotlib import pyplot as plt
from src.generate_data import *
from src.k_means import *
from src.read_iris_data import *
from src.gaussian_mixture_model import *


def generate_picture(k, random_mu, random_result, not_random_mu, not_random_result, gmm_mu, gmm_result):
    plt.title("K means, random select center")
    for i in range(k):
        plt.scatter(np.array(random_result[i])[:, 0], np.array(random_result[i])[:, 1], label=str(i + 1))
    plt.scatter(random_mu[:, 0], random_mu[:, 1], c="b", label="center")
    plt.legend()
    plt.show()

    plt.title("K means, not random select center")
    for i in range(k):
        plt.scatter(np.array(not_random_result[i])[:, 0], np.array(not_random_result[i])[:, 1], label=str(i + 1))
    plt.scatter(not_random_mu[:, 0], not_random_mu[:, 1], c="b", label="center")
    plt.legend()
    plt.show()

    plt.title("GMM")
    for i in range(k):
        plt.scatter(np.array(gmm_result[i])[:, 0], np.array(gmm_result[i])[:, 1], label=str(i + 1))
    plt.scatter(gmm_mu[:, 0], gmm_mu[:, 1], c="b", label="center")
    plt.legend()
    plt.show()


def test_iris_data():
    data_X, data_Y = read_iris_data()
    k_means = KMeans(data_X, 3)
    k_means__mu, k_means_result = k_means.not_random_select_center()
    k_means_attribution = k_means.data_attribution

    number = len(data_Y)
    counts_kmeans = []
    result = list(it.permutations(['Iris-setosa', 'Iris-versicolor', 'Iris-virginica'], 3))
    for i in range(len(result)):
        count = 0
        for index in range(number):
            # print(data_Y[index])
            # print(result[i][k_means_attribution[index]])
            if data_Y[index] == result[i][k_means_attribution[index]]:
                count += 1
        counts_kmeans.append(count)
    kmeans_accuracy = 1.0 * np.max(counts_kmeans) / number
    print("k means accuracy:", kmeans_accuracy)

    deviation = 1e-12
    iteration_number = 10000
    # print(data_X.shape)
    gmm = GaussianMixtureModel(data_X, 3, deviation, iteration_number)
    gmm_mu, gmm_result = gmm.gmm()

    counts_gmm = []
    gmm_attribution = gmm.data_attribution
    # print(gmm_attribution)
    for i in range(len(result)):
        count = 0
        for index in range(number):
            if data_Y[index] == result[i][gmm_attribution[index]]:
                count += 1
        counts_gmm.append(count)
    gmm_accuracy = 1.0 * np.max(counts_gmm) / number
    print("GMM accuracy:", gmm_accuracy)


def main():
    k = 3
    category_means = [[1, 1], [-1, 0], [1, -2]]
    category_number = [100, 100, 100]
    data = generate_2_dimension_data(category_means, category_number, k)
    k_means_result = KMeans(data, k)
    random_mu, random_result = k_means_result.random_select_center()
    not_random_mu, not_random_result = k_means_result.not_random_select_center()

    deviation = 1e-12
    iteration_number = 10000
    gmm = GaussianMixtureModel(data, k, deviation, iteration_number)
    gmm_mu, gmm_result = gmm.gmm()

    generate_picture(k, random_mu, random_result, not_random_mu, not_random_result, gmm_mu, gmm_result)

    test_iris_data()


if __name__ == '__main__':
    main()
