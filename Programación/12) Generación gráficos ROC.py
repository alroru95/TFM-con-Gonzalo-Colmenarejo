#Importación de módulos
import numpy as np
from matplotlib import pyplot as plt
from sklearn.metrics import roc_auc_score, roc_curve, precision_recall_curve, average_precision_score

#Definición de función para extraer los valores de energía
def extract_energies(sdf_path):
    with open(sdf_path, 'r') as f:
        lines = f.readlines()
    energies = []
    for i, line in enumerate(lines):
        if '> <minimizedAffinity>' in line:
            try:
                energies.append(float(lines[i + 1].strip()))
            except (IndexError, ValueError):
                print(f"Error al leer energía en línea {i + 1}")
    return energies

#Asignación de decoys al ligando original: todos tienen 50 a excepción de HL8, que tiene 100
def normalize_by_block(dec_energies, lig_energies, pocket_type):
    if pocket_type == "orthosteric":
        decoy_blocks = [50, 50, 50]
    elif pocket_type == "allosteric":
        decoy_blocks = [100, 50, 50]
    else:
        raise ValueError("Tipo de bolsillo no reconocido. Usa 'orthosteric' o 'allosteric'.")

    assert sum(decoy_blocks) == len(dec_energies), "El número de decoys no coincide con los bloques esperados."
#Inversión de signos de las energías
    inv_lig_energies = [-e for e in lig_energies]
    inv_dec_energies = [-e for e in dec_energies]
#Normalización de la energía de cada decoy con respecto al asignado
    norm_dec_energies = []
    start = 0
    for i, size in enumerate(decoy_blocks):
        lig_min = min(inv_lig_energies[i::3])  # el ligando i
        block = inv_dec_energies[start:start+size]
        norm_block = [e / lig_min for e in block]
        norm_dec_energies.extend(norm_block)
        start += size

    return inv_lig_energies, norm_dec_energies
#Generación de gráficos ROC y PR
def plot_roc(inv_lig_energies, norm_dec_energies, title):
    labels = [1] * len(inv_lig_energies) + [0] * len(norm_dec_energies)
    energies = inv_lig_energies + norm_dec_energies
#Calculo del valor de AUC y PR
    fpr, tpr, _ = roc_curve(labels, energies)
    auc = roc_auc_score(labels, energies)
    # PR Curve
    precision, recall, _ = precision_recall_curve(labels, energies)
    average_precision = average_precision_score(labels, energies)

    # Plot both ROC and PR curves side by side
    fig, axs = plt.subplots(1, 2, figsize=(12, 6))

    # ROC Curve
    axs[0].plot(fpr, tpr, label=f"AUC = {auc:.3f}", color="darkorange")
    axs[0].plot([0, 1], [0, 1], linestyle='--', color='gray')
    axs[0].set_xlabel("False Positive Rate")
    axs[0].set_ylabel("True Positive Rate")
    axs[0].set_title(f"ROC Curve - {title}")
    axs[0].legend()

    # PR Curve
    axs[1].plot(recall, precision, label=f"AP = {average_precision:.3f}", color="darkblue")
    axs[1].set_xlabel("Recall")
    axs[1].set_ylabel("Precision")
    axs[1].set_title(f"PR Curve - {title}")
    axs[1].legend()

    # Supertitulo
    plt.suptitle(f"ROC and PR Curves for {title} site", fontsize=16)

    plt.tight_layout()
    plt.savefig(f"{title}_ROC_PR_curve.png")
    plt.show()


# ==== USO ====
#Tipos de bolsillo de unión a analizar
pocket_type = input("Tipo de bolsillo (orthosteric o allosteric): ")
#Rutas a los archivos a analizar
ligand_file = f"/home/alonso/TFM/dockings/ligands/{Name}_interaction_ligands.sdf"
decoy_file = f"/home/alonso/TFM/dockings/decoys/{Name}_interaction_decoys.sdf"
#Extraccion de energias para los archivos definidos arriba
lig_energies = extract_energies(ligand_file)
dec_energies = extract_energies(decoy_file)
#Normalización de las energias
inv_ligs, norm_decs = normalize_by_block(dec_energies, lig_energies, pocket_type)
plot_roc(inv_ligs, norm_decs, pocket_type)
