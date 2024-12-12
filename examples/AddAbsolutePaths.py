import yaml
import os
with open('example_config.yaml') as f:
    y = yaml.safe_load(f)
    y['Predictor']=os.getcwd()+'/'+y['Predictor']
    y['Response']=os.getcwd()+'/'+y['Response']

with open("tmp.yaml", "w") as ostream:
    yaml.dump(y, ostream, default_flow_style=False, sort_keys=False, indent=4)

os.rename('tmp.yaml', 'example_config.yaml')