import numpy as np
import numpy.random as random
import collections
from scipy.stats import multivariate_normal


def calculate_distance(x_1, x_2):
    return np.linalg.norm(x_1 - x_2)


class GaussianMixtureModel(object):
    def __init__(self, data, k, deviation, iteration_number):
        self.data = data
        self.k = k
        self.deviation = deviation
        self.iteration_number = iteration_number
        self.alpha = np.ones(self.k) * (1.0 / self.k)
        self.data_rows = data.shape[0]
        self.data_columns = data.shape[1]
        self.mu, self.sigma = self.__init_params()
        self.data_attribution = [-1] * self.data_rows
        self.result = collections.defaultdict(list)
        self.gamma = None

    def __init_params(self):
        mu_0 = random.randint(0, self.k)
        # print(mu_0)
        mu_temp = [self.data[mu_0]]
        # 依次选择与当前mu中样本点距离最大的点作为初始簇中心点
        for index in range(self.k - 1):
            temp_ans = []
            for i in range(self.data_rows):
                temp_ans.append(np.sum([calculate_distance(self.data[i], mu_temp[j]) for j in range(len(mu_temp))]))
            mu_temp.append(self.data[np.argmax(temp_ans)])
        mu = np.array(mu_temp)
        # print("mu", mu)
        sigma = collections.defaultdict(list)
        for i in range(self.k):
            sigma[i] = np.eye(self.data_columns, dtype=float) * 0.1

        # print("sigma", sigma)
        # for i in range(self.k):
        #     print("sigma", i, sigma[i])
        return mu, sigma

    def calculate_likelihood(self):
        likelihood = np.zeros((self.data_rows, self.k))
        for i in range(self.k):
            # print("------------")
            # print("mu[i]", self.mu[i])
            # print("sigma[i]", self.sigma[i])
            likelihood[:, i] = multivariate_normal.pdf(self.data, self.mu[i], self.sigma[i])
            # print(likelihood[:, i])
        return likelihood

    def calculate_expectation(self):
        likelihoods = self.calculate_likelihood() * self.alpha
        sum_likelihood = np.expand_dims(np.sum(likelihoods, axis=1), axis=1)

        self.gamma = likelihoods / sum_likelihood
        # print(self.gamma)
        self.data_attribution = self.gamma.argmax(axis=1)
        for i in range(self.data_rows):
            self.result[self.data_attribution[i]].append(self.data[i].tolist())

    def max_function(self):
        for i in range(self.k):
            gamma_ji = np.expand_dims(self.gamma[:, i], axis=1)
            mu_i = (gamma_ji * self.data).sum(axis=0) / gamma_ji.sum()
            cov = (self.data - mu_i).T.dot((self.data - mu_i) * gamma_ji) / gamma_ji.sum()
            self.mu[i], self.sigma[i] = mu_i, cov
        self.alpha = self.gamma.sum(axis=0) / self.data_rows

    def gmm(self):
        pre_alpha = self.alpha
        pre_mu = self.mu
        pre_sigma = self.sigma
        for i in range(self.iteration_number):
            self.calculate_expectation()
            self.max_function()
            diff = np.linalg.norm(pre_alpha - self.alpha) + np.linalg.norm(pre_mu - self.mu) + np.sum(
                [np.linalg.norm(pre_sigma[i] - self.sigma[i]) for i in range(self.k)])
            if diff > self.deviation:
                pre_alpha = self.alpha
                pre_sigma = self.sigma
                pre_mu = self.mu
            else:
                break
        self.calculate_expectation()
        return self.mu, self.result
