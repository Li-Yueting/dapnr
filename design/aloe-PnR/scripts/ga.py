import json
import os
import random
import numpy as np
import pdb
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
        self.bf = os.getenv("base_dir")+"/summary/"+"gen-"+str(int(os.getenv("gen"))-1)+"-best.json" #bf=best_file

    def select(self):
        adjusts = np.loadtxt(self.ff, delimiter=" ")
        mean = np.mean(adjusts)
        median = np.median(adjusts)
        min= np.min(adjusts)
        best_index = int(np.argmax(adjusts))
        self.genes = np.loadtxt(self.gf, delimiter=",", dtype=int)
        if self.gen == 0:
            self.best = None
        else:
            with open(self.bf, 'r') as f:
                data = json.load(f)
                # print("data", data)
                self.best = data["best_gene"], data["best_fitness"]
                # self.best = json.load(f)
                
        if self.best is None or np.max(adjusts) > self.best[1]:
            self.best = self.genes[np.argmax(adjusts)], np.max(adjusts)

        best_0 = self.best[0] if isinstance(self.best[0], list) else self.best[0].tolist()
        best_1 = self.best[1] 
        best=best_0, best_1
        extra = {
            "best_gene": best_0,
            "best_fitness": -best_1,
            "best_index": best_index,
            "mean": -mean,
            "median": -median,
            "max": -min
        }
        best_out_file = os.getenv("base_dir")+"/summary/gen-"+str(self.gen)+"-best.json"
        print(extra)
        with open(best_out_file, "w") as f:
            # json.dump(best, f)
            json.dump(extra, f)

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
        # keep best individual 
        if np.max(adjusts[sel]) < self.best[1]:
            self.genes[sel[np.argmin(adjusts[sel])]] = self.best[0]
        self.genes[0:self.pop_size] = self.genes[sel]
        


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
    GU = GeneUpdate()
    GU.select()
    GU.cross()
    GU.mutate()
    gene_out_file = os.getenv("base_dir")+"/summary/gen-"+str(int(os.getenv("gen"))+1)+"-genes.txt"
    np.savetxt(gene_out_file, GU.genes, fmt='%i', delimiter=',')

    for id, gene in enumerate(GU.genes):
        new_dir = os.getenv("base_dir") + '/gen-'+str(GU.gen+1) + '-id-'+str(id)
        cmd = 'mkdir ' +  new_dir
        os.system(cmd)
        assign_netweight(os.getenv("base_dir")+'/netweight.tcl', gene, new_dir)

    



    