import json
import os 
import numpy as np

last_bf = os.getenv("base_dir")+"/summary/"+"gen-"+str(int(os.getenv("ngen"))-1)+"-best.json"
with open(last_bf) as f:
    data = json.load(f)
    last_best = data["best_gene"], data["best_fitness"]
    # last_best = json.load(f)

ff = os.getenv("base_dir")+"/summary/"+"gen-"+str(os.getenv("ngen"))+"-fitness.txt" #ff=fitness_file
gf = os.getenv("base_dir")+"/summary/"+"gen-"+str(os.getenv("ngen"))+"-genes.txt" #gf=gene_file
fitness = np.loadtxt(ff, delimiter=" ")
genes = np.loadtxt(gf, delimiter=",", dtype=int)
best = genes[np.argmax(fitness)], np.max(fitness)
mean = np.mean(fitness)
median = np.median(fitness)
min= np.min(fitness)
best_index = int(np.argmax(fitness))
best_0 = best[0] if isinstance(best[0], list) else best[0].tolist()
best_1 = best[1] 
extra = {
    "best_gene": best_0,
    "best_fitness": best_1,
    "best_index": best_index,
    "mean": mean,
    "median": median,
    "min": min
}
best_out_file = os.getenv("base_dir")+"/summary/gen-"+str(os.getenv("ngen"))+"-best.json"
if np.max(fitness) > last_best[1]:
    with open(best_out_file, "w") as f:
        json.dump(extra, f)
else:
    with open(best_out_file, "w") as f:
        json.dump(data, f)
