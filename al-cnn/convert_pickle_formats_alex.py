import pickle, os, glob, tqdm

files = glob.glob('data/lca_6/*.pickle')
for f in tqdm.tqdm(files):
    X = pickle.load(open(f,'rb'))
    pickle.dump(X,open(f, 'wb'),protocol = 2)
