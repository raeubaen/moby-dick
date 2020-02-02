import pandas as pd
letters = list(pd.read_csv("letters", sep=",", header=None).ix[:, 0])
letters = [l.lower() for l in letters]
letters.insert(letters.index("l"), "j")
num = lambda lt: letters.index(lt)
let = lambda n: letters[n]
for l in letters:
  print(f"\t{num(l)}: \"{l}\",")
for l in letters:
  print(f"\t\"{l}\": {num(l)},")

message = "quarantatrequarantaquattrometri"
cipher_text = [let((num(lt)**7)%22) for lt in message]
print("".join(cipher_text))
