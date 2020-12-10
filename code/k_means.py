import numpy as np
import random
import collections


def calculate_distance(x_1, x_2):
    return np.linalg.norm(x_1 - x_2)


class KMeans(object):
    def __init__(self, data, k, deviation=1e-6):
        self.data = data
        self.k = k
        self.deviation = deviation
        self.data_rows = data.shape[0]
        self.data_columns = data.shape[1]
        self.data_attribution = [-1] * self.data_rows
        self.mu = self.__initial_k_dots()

    def __initial_k_dots(self):
        mu_temp = np.random.randint(0, self.k) + 1
        mu = [self.data[mu_temp]]
        for i in range(self.k - 1):
            ans = []
            for j in range(self.data_rows):
                temp_ans = np.sum([calculate_distance(self.data[j], mu[k]) for k in range(len(mu))])
                ans.append(temp_ans)
            mu.append(self.data[np.argmax(ans)])
        return np.array(mu)

    def k_means(self):
        number = 0
        while True:
            result = collections.defaultdict(list)
            for i in range(self.data_rows):
                distance = [calculate_distance(self.data[i], self.mu[j]) for j in range(self.k)]
                lam_j = np.argmin(distance)
                result[lam_j].append(self.data[i].tolist())
                self.data_attribution[i] = lam_j
            new_mu = np.array([np.mean(result[i], axis=0).tolist() for i in range(self.k)])
            new_loss = np.sum(calculate_distance(self.mu[i], new_mu[i]) for i in range(self.k))
            if new_loss > self.deviation:
                self.mu = new_mu
            else:
                break
            # print(number)
            number += 1
        # print(self.mu)
        return self.mu, result

    def random_select_center(self):
        self.mu = self.data[random.sample(range(self.data_rows), self.k)]
        return self.k_means()

    def not_random_select_center(self):
        self.mu = self.__initial_k_dots()
        return self.k_means()
