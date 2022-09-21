import json
import os 
import numpy as np

last_bf = os.getenv("base_dir")+"/summary/"+"gen-"+str(int(os.getenv("ngen"))-1)+"-best.txt"
with open(last_bf) as f:
    last_best = json.load(f)

ff = os.getenv("base_dir")+"/summary/"+"gen-"+str(os.getenv("ngen"))+"-fitness.txt" #ff=fitness_file
gf = os.getenv("base_dir")+"/summary/"+"gen-"+str(os.getenv("ngen"))+"-genes.txt" #gf=gene_file
fitness = np.loadtxt(ff, delimiter=" ")
genes = np.loadtxt(gf, delimiter=",", dtype=int)
best = genes[np.argmax(fitness)], np.max(fitness)
best_0 = best[0] if isinstance(best[0], list) else best[0].tolist()
best_1 = best[1] 
best=best_0, best_1
best_out_file = os.getenv("base_dir")+"/summary/gen-"+str(os.getenv("ngen"))+"-best.txt"
if np.max(fitness) > last_best[1]:
    with open(best_out_file, "w") as f:
        json.dump(best, f)
else:
    with open(best_out_file, "w") as f:
        json.dump(last_best, f)