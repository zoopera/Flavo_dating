seed = -1
seqfile = part1.phy
treefile = gene.pos.treefile
outfile = ./03_mcmctree.out
checkpoint = 1  * 0: nothing; 1 : save; 2: resume
* duplication = 1 (this force some nodes in the tree to have the same age)
* TipDate = 1 100 * TipDate (1) & time unit

ndata = 1
seqtype = 2
usedata = 2 in.BV 1
clock = 3

model = 0
alpha = 0.5
ncatG = 5    * No. categories in discrete gamma

cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

BDparas = 1 1 0.1
kappa_gamma = 6 2      * gamma prior for kappa
alpha_gamma = 1 1      * gamma prior for alpha

rgene_gamma = 1 35 1
sigma2_gamma = 1 10 1

finetune = 1: 0.1  0.1  0.1  0.01 .5  * auto (0 or 1) : times, musigma2, rates, mixing, paras, FossilErr

print = 1
burnin = 60000
sampfreq = 30
nsample = 20000

*** Note: Make your window wider (100 columns) before running the program.
