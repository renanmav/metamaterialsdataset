import pyprind
import pandas as pd
import numpy as np
import os

base_path = 'C:/Users/Renan/Desktop/results'

results = np.array(os.listdir(base_path))
results = np.delete(results, [0], axis=0)

n_simulations = results.astype(int).max()

pbar = pyprind.ProgBar(n_simulations)

df_features = pd.DataFrame()
df_targets = pd.DataFrame()

files = ['features.csv', 'p0.txt', 'pr.txt', 's.txt', 'vswr.txt']

for simulation in results:
    df_targets_simulation = pd.DataFrame()

    for file in files:
        with open(base_path+ '/{}/{}'.format(simulation, file), 'r') as infile:
            # for csv's
            if infile.name[-4:] == '.csv':
                df_features = df_features.append([infile.read().split(',')], ignore_index=True)
                df_features = df_features.astype('float64')

            # for txt's
            if infile.name[-4:] == '.txt':
                df_txt = pd.read_csv(infile.name, skiprows=[0,1], header=None, delim_whitespace=True)

                value = file.split('.')[0]
                df_txt.columns = ['f', value]

                row_f = df_txt[df_txt.f == 3.5]
                row_f.reset_index(inplace=True)

                df_targets_simulation.insert(loc=0, column=value, value=row_f[value])

            pbar.update()

    df_targets = df_targets.append(df_targets_simulation, ignore_index=True)


df_features.columns = ['Wm', 'W0m', 'dm', 'tm', 'hm', 'h0', 'cols', 'offset', 'distance']

df = df_features.join(df_targets)

print(df.head(),'\n',df.info(), '\n', df.describe())