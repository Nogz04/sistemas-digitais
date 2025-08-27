
# FlipFlop JK 

### Tabela-Verdade: ⬇

<img width="467" height="308" alt="{34E845AC-0C8B-4FE7-AC53-B923732BD849}" src="https://github.com/user-attachments/assets/d88255f6-b28e-43c5-973f-888ddf79ebc4" /> <br>

> Exemplo abaixo no Logisim: ⬇

<img width="407" height="301" alt="{56CAF96F-DFFF-4361-9264-2B35B383843F}" src="https://github.com/user-attachments/assets/be9e09f3-088e-4073-a55d-687a471c413c" /> <br>


Explicação:

> - Se J = 0 e K = 0, mantém o resultado.
> - Se J = 0 e K = 1, o resultado é 0.
> - Se J = 1 e K = 0, o resultado é 1.
> - Se J = 1 e K = 1, o resultado inverte.

---

# FlipFlop SR

### Tabela-Verdade: ⬇

<img width="479" height="392" alt="{0FB5C05B-8738-409E-90BB-DEA29CB5CE0D}" src="https://github.com/user-attachments/assets/9fbe3d5e-8302-4a41-aa13-5bf8db377590" /> <br>

> Exemplo abaixo no Logisim: ⬇
<img width="359" height="254" alt="{E0452896-EC3C-4E95-AAEA-62A63D8AF96A}" src="https://github.com/user-attachments/assets/4f484f91-85a9-43cf-8a63-70c3105a92eb" />

---

# FlipFlop T

### Tabela-Verdade: ⬇

<img width="455" height="216" alt="{FA70E5D3-9EDB-434D-8603-2DEE4449F07C}" src="https://github.com/user-attachments/assets/0ec28608-33da-4bec-a5dd-2753d87c0ef4" />
 <br>

> Exemplo abaixo no Logisim: ⬇
<img width="359" height="240" alt="{CE1E6B6B-98B9-453D-B76A-F432AA3BA112}" src="https://github.com/user-attachments/assets/af74dd85-cde3-4f7e-8a82-f02fa1b0f53b" />


---

# FlipFlop D

### Tabela-Verdade: ⬇

<img width="460" height="216" alt="{8F7E1526-2560-45D6-A7D9-0DF57A0D5D4F}" src="https://github.com/user-attachments/assets/d4723f95-e8bd-44d7-a05a-b3135245ada3" />

 <br>

> Exemplo abaixo no Logisim: ⬇
<img width="351" height="259" alt="{8747135A-D1CF-4687-933E-76526A8A4C6D}" src="https://github.com/user-attachments/assets/e57b298e-7270-4130-ab75-dab5d0ee6812" />


# Latch

## Latch SR - NOR

<img width="1247" height="698" alt="image" src="https://github.com/user-attachments/assets/f066d9b9-d128-4f4c-bab6-64be31353b29" />


## Latch SR - NAND

<img width="1242" height="699" alt="image" src="https://github.com/user-attachments/assets/e9efb072-00ae-4e5e-8ff9-c9cfed0caade" />

## Latch D

<img width="1244" height="705" alt="image" src="https://github.com/user-attachments/assets/0225dc05-bbb0-4e42-931d-8ee38e15d373" />


# 📌 Colinha de Flip-Flops / Latches

## 1. Latch SR (NOR) – entradas ativas em 1

| S | R | Clock / Ativo | Q+ | Observação |
|---|---|---------------|----|------------|
| 0 | 0 | N/A           | Mantém | Estado anterior |
| 1 | 0 | N/A           | 1 (Set) | Seta Q |
| 0 | 1 | N/A           | 0 (Reset) | Zera Q |
| 1 | 1 | N/A           | Proibido | Q e Q̅ = 0 |

**Resumo:** Mantém = (0,0), Set = (1,0), Reset = (0,1), Proibido = (1,1)

---

## 2. Latch SR (NAND) – entradas ativas em 0

| S | R | Clock / Ativo | Q+ | Observação |
|---|---|---------------|----|------------|
| 1 | 1 | N/A           | Mantém | Estado anterior |
| 0 | 1 | N/A           | 1 (Set) | Seta Q |
| 1 | 0 | N/A           | 0 (Reset) | Zera Q |
| 0 | 0 | N/A           | Proibido | Q e Q̅ = 1 |

**Resumo:** Mantém = (1,1), Set = (0,1), Reset = (1,0), Proibido = (0,0)

---

## 3. JK – Flip-Flop sincronizado

| J | K | Clock: ↑ | Q+ | Observação |
|---|---|-----------|----|------------|
| 0 | 0 | ↑         | Mantém | Estado anterior |
| 1 | 0 | ↑         | 1 (Set) | Seta Q |
| 0 | 1 | ↑         | 0 (Reset) | Zera Q |
| 1 | 1 | ↑         | Toggle (inverte) | Q → Q̅ |

**Resumo:** Mantém = (0,0), Set = (1,0), Reset = (0,1), Toggle = (1,1), nunca proibido

---

## 4. D – Flip-Flop

| D | Clock: ↑ | Q+ | Observação |
|---|-----------|----|------------|
| 0 | ↑         | 0 | Copia D |
| 1 | ↑         | 1 | Copia D |

**Resumo:** Sempre segue D, nunca proibido, sem toggle

---

## 5. T – Flip-Flop

| T | Clock: ↑ | Q+ | Observação |
|---|-----------|----|------------|
| 0 | ↑         | Mantém | Estado anterior |
| 1 | ↑         | Toggle (inverte) | Q → Q̅ |

**Resumo:** Mantém = 0, Toggle = 1, nunca proibido
