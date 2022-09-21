import json
import os
import random
import numpy as np
from initial_genes import assign_netweight


class GeneUpdate:
    def __init__(self):
        self.pop_size = int(os.getenv("pop_size"))
        self.gen = int(os.getenv("gen"))
        self.width = int(os.getenv("num_of_net"))
        self.min_netweight = int(os.getenv("min_netweight"))
        self.max_netweight = int(os.getenv("max_netweight"))
        # self.cross_prob = float(os.getenv("cross_prob"))
        self.mutate_prob = float(os.getenv("mutate_prob"))
        self.alpha = float(os.getenv("alpha"))
        self.ff = os.getenv("base_dir")+"/summary/"+"gen-"+str(os.getenv("gen"))+"-fitness.txt" #ff=fitness_file
        self.gf = os.getenv("base_dir")+"/summary/"+"gen-"+str(os.getenv("gen"))+"-genes.txt" #gf=gene_file
        self.bf = os.getenv("base_dir")+"/summary/"+"gen-"+str(self.gen-1)+"-best.txt" #bf=best_file

    def select(self):
        adjusts = np.loadtxt(self.ff, delimiter=" ")
        self.genes = np.loadtxt(self.gf, delimiter=",", dtype=int)
        if self.gen == 0:
            self.best = None
        else:
            with open(self.bf) as f:
                self.best = json.load(f)
        if self.best is None or np.max(adjusts) > self.best[1]:
            self.best = self.genes[np.argmax(adjusts)], np.max(adjusts)
        ready_index = list(range(2 * self.pop_size))
        sel = []
        while len(ready_index) >= 2:
            d1 = random.choice(ready_index)
            ready_index.remove(d1)
            d2 = random.choice(ready_index)
            ready_index.remove(d2)

            if adjusts[d1] > adjusts[d2]:
                sel.append(d1)
            else:
                sel.append(d2)
        adjusts=np.array(adjusts)
        # 保留最优的个体
        if np.max(adjusts[sel]) < self.best[1]:
            self.genes[sel[np.argmin(adjusts[sel])]] = self.best[0]
        self.genes[0:self.pop_size] = self.genes[sel]
        # adjusts = np.loadtxt(self.ff, delimiter=" ")
        # self.genes = np.loadtxt(self.gf, delimiter=",", dtype=int)
        # if self.gen == 0:
        #     self.best = None
        # else:
        #     with open(self.bf) as f:
        #         self.best = json.load(f)
        
        # if self.best is None or np.max(adjusts) > self.best[1]:
        #     self.best = self.genes[np.argmax(adjusts)], np.max(adjusts)
        #     print("dididiidi")
        #     print(self.best)
        #     p = adjusts / np.sum(adjusts)
        #     cu_p = []
        #     for i in range(self.pop_size):
        #         cu_p.append(np.sum(p[0:i]))
        #     cu_p = np.array(cu_p)
        #     r0 = np.random.uniform(0, 1, self.pop_size)
        #     sel = [max(list(np.where(r > cu_p)[0]) + [0]) for r in r0]
        #     adjusts=np.array(adjusts)
        #     # keep the best subject
        #     if np.max(adjusts[sel]) < self.best[1]:
        #         self.genes[sel[np.argmin(adjusts[sel])]] = self.best[0]
        #     self.genes = self.genes[sel]
        best_0 = GU.best[0] if isinstance(GU.best[0], list) else GU.best[0].tolist()
        best_1 = GU.best[1] 
        best=best_0, best_1
        best_out_file = os.getenv("base_dir")+"/summary/gen-"+str(GU.gen)+"-best.txt"
        with open(best_out_file, "w") as f:
            json.dump(best, f)


    def cross(self):
        ready_index = list(range(self.pop_size))
        while len(ready_index) >= 2:
            d1 = random.choice(ready_index)
            ready_index.remove(d1)
            d2 = random.choice(ready_index)
            ready_index.remove(d2)
            loc = random.choice(range(1, self.width - 1))
            d1_a, d1_b = list(self.genes[d1][0:loc]), list(self.genes[d1][loc:])
            d2_a, d2_b = list(self.genes[d2][0:loc]), list(self.genes[d2][loc:])
            self.genes[d1+self.pop_size] = d1_a + d2_b
            self.genes[d2+self.pop_size] = d2_a + d1_b
        # ready_index = list(range(self.pop_size))
        # while len(ready_index) >= 2:
        #     d1 = random.choice(ready_index)
        #     ready_index.remove(d1)
        #     d2 = random.choice(ready_index)
        #     ready_index.remove(d2)
        #     if np.random.uniform(0, 1) <= self.cross_prob:
        #             loc = random.choice(range(1, self.width - 1))
        #             d1_a, d1_b = list(self.genes[d1][0:loc]), list(self.genes[d1][loc:])
        #             d2_a, d2_b = list(self.genes[d2][0:loc]), list(self.genes[d2][loc:])
        #             self.genes[d1] = d1_a + d2_b
        #             self.genes[d2] = d2_a + d1_b
    
    def mutate(self):
        ready_index = list(range(self.pop_size*2))
        for i in ready_index:
            if np.random.uniform(0, 1) <= self.mutate_prob:
                loc = random.choice(range(0, self.width))
                t0 = list(self.genes[i])
                t0[loc] = random.choice(range(self.min_netweight, self.max_netweight))
                self.genes[i] = t0

def log(i, a, b):
    print("epoch --> ",
          str(i + 1).rjust(5, " "), " max:",
          str(round(a, 4)).rjust(8, " "), "mean:",
          str(round(b, 4)).rjust(8, " "), "alpha:",
          str(round(a / b, 4)).rjust(8, " "))

if __name__ == "__main__":
    # adjusts = np.loadtxt(os.getenv("base_dir")+"/summary/"+"gen-"+str(os.getenv("gen"))+"-fitness.txt", delimiter=" ")
    # a, b = np.max(adjusts), np.mean(adjusts)
    # if a / b < float(os.getenv("alpha")):
    #     log(os.getenv("gen"), a, b)
    #     print("Evolution ends, the algorithm converges！Evolved for ", os.getenv("gen"), " generations！")
    
    GU = GeneUpdate()
    GU.select()
    GU.cross()
    GU.mutate()
    gene_out_file = os.getenv("base_dir")+"/summary/gen-"+str(GU.gen+1)+"-genes.txt"
    
    np.savetxt(gene_out_file, GU.genes, fmt='%i', delimiter=',')
    # print("------best--------")
    # print(GU.best)
    # best_0 = GU.best[0] if isinstance(GU.best[0], list) else GU.best[0].tolist()
    # best_1 = GU.best[1] 
    # best=best_0, best_1
    # with open(best_out_file, "w") as f:
    #     json.dump(best, f)

    for id, gene in enumerate(GU.genes):
        new_dir = os.getenv("base_dir") + '/gen-'+str(GU.gen+1) + '-id-'+str(id)
        cmd = 'mkdir ' +  new_dir
        os.system(cmd)
        assign_netweight(os.getenv("base_dir")+'/netweight.tcl', gene, new_dir)

    



    