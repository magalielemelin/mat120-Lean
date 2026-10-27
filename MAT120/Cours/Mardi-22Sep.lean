import Verbose.French.ExampleLib
import MAT120.src.lois_logique
import Mathlib.Analysis.Real.Sqrt

open Verbose.French
open Verbose.Named

Lemme comb_lin "Combinaison linéaire de diviseurs (ex 2^kp * 3^kp * 5^kp)"
  Données:{a b d: ℤ}
  Hypothèses:(hda: d ∣ a ) (hdb: d ∣ b)
  Conclusion:∀ u v :ℤ, d ∣ (a*u + b*v)
Démonstration:
  Soit u v :ℤ
  Par hda on obtient (k: ℤ ) tel que (H1 : a = d*k)
  Par hdb on obtient (l: ℤ ) tel que (H2 : b = d*l)
  Montrons que k*u + l*v convient
  Calc a*u + b*v = (d*k)*u + b*v par H1
    _=(d*k)*u + (d*l)*v par H2
    _=d*(k*u+l*v) par calcul
QED

Exemple "Réutilisation de comb_lin"
  Données:{a b d : ℤ}
  Hypothèses: (h1: d ∣ a ) (h2: d ∣ b)
  Conclusion: d ∣ a-b
Démonstration:
  Fait hyp : a-b = a*1 + b*(-1) par calcul
  On réécrit via hyp
  On conclut par comb_lin appliqué à h1 et h2 et (1) et (-1)
QED

Exemple "n+4 est pair"
  Données: (n : ℤ )
  Hypothèses:
  Conclusion:(∃ k : ℤ, n=2*k) ↔ (∃ l: ℤ, n+4 = 2*l)
Démonstration:
  Montrons d'abord que (∃ k : ℤ, n=2*k) → (∃ l: ℤ, n+4 = 2*l)
  Supposons h : ∃ k : ℤ, n = 2*k
  Par h on obtient (k:ℤ ) tel que (hk:n=2*k)
  Montrons que k+2 convient
  Calc n+4 = (2*k)+4 par hk
    _= 2*(k+2) par calcul
  Montrons maintenant que (∃ l: ℤ, n+4 = 2*l) → (∃ k : ℤ, n=2*k)
  Supposons h : ∃ l : ℤ, n+4 = 2*l
  Par h on obtient (l: ℤ) tel que (hl: n+4 = 2*l)
  Montrons que l-2 convient
QED
