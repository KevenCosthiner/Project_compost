!pip install rdkit
!pip install pandas

import pandas as pd 
import numpy as np
from rdkit import Chem
import seaborn as sns

from rdkit.Chem.MolStandardize import rdMolStandardize

from rdkit.Chem import Descriptors
from rdkit.Chem import Crippen
from rdkit.Chem import Lipinski
from rdkit.Chem import rdMolDescriptors

data = pd.read_csv('supernatural.csv', sep =';') #importando os dados utilizando o pandas
data


#Normalizando os dados utilizando como base a coluna SMILES
SMILES = [] #criando lista vazia
for i in range (0, 6000):#criando um loop 
    molecula = rdMolStandardize.StandardizeSmiles(data.SMILES[i])
    SMILES.append(molecula) #juntando a molecula que foi normalizada no comando acima
    


#Utilizando a lista SMILES para poder colocar os elementos requeridos
#Criando listas vazias com os nomes requeridos para extração dados Baseado na lista SMILES
NumAtoms = []
MolWt = []
Mol_LogP = []
HAcceptors = []
HDonors = []
Ring_Count = []
TPSA_List =[]
RotableBonds = []
Molecular_formula = []
#Criando um loop para extrair os dados normalizados na "SMILES":
for i in range (0, len(SMILES)):
    NumAtoms.append(Chem.MolFromSmiles(SMILES[i]).GetNumAtoms())
    MolWt.append(Descriptors.ExactMolWt(Chem.MolFromSmiles(SMILES[i])))
    TPSA_List.append(Descriptors.TPSA(Chem.MolFromSmiles(SMILES[i])))
    Mol_LogP.append(Crippen.MolLogP(Chem.MolFromSmiles(SMILES[i])))
    HAcceptors.append(Lipinski.NumHAcceptors(Chem.MolFromSmiles(SMILES[i])))
    HDonors.append(Lipinski.NumHDonors(Chem.MolFromSmiles(SMILES[i])))
    Ring_Count.append(Lipinski.RingCount(Chem.MolFromSmiles(SMILES[i])))
    RotableBonds.append(Lipinski.NumRotatableBonds(Chem.MolFromSmiles(SMILES[i])))
    Molecular_formula.append(rdMolDescriptors.CalcMolFormula(Chem.MolFromSmiles(SMILES[i])))
   

 #criando uma lista com ID das moléculas para o fazer o dataframe 
ID = []
for i in range (0, 6000):
    ID.append(data['ID_natural'][i])

#Colocando os dados nas listas anteriormente criadas
dados = {'ID_natural': ID,
    'SMILES' : SMILES,
    'NumAtoms': NumAtoms,
    'MolWt': MolWt,
    'MolLogp': Mol_LogP,
    'HAcceptors': HAcceptors,
    'HDonors': HDonors,
    'RindCount': Ring_Count,
    'tpsa': TPSA_List,
    'RotableBonds': RotableBonds,
    'MolecularFormula': Molecular_formula}

#criando data frame com a biblioteca das listas anteriores
pd.DataFrame(dados).to_csv("natural.csv", sep = ';')   