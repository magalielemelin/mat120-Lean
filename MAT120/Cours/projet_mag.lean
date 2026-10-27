Exemple "Proposition 2.4"
  Données: (n : ℤ)
  Hypothèses:
  Conclusion: (∃ k : ℤ, n = 2*k) → (∃ k' :ℤ, n^2 = 2*k')
Démonstration:
 Supposons n_est_pair : (∃ k : ℤ, n = 2*k)
 Par n_est_pair on obtient k tel que (hn : n = 2*k) -- On doit toujours donner un nom à nos hypothèses en LEAN
 Montrons que 2*k^2 convient -- k' = 2*k^2
 -- On doit faire des calculs, ce qu'on indique par `Calc`
 Calc n^2 = (2*k)^2 par hn
      _ = 4*(k^2) par calcul
      _ = 2*(2*k^2) par calcul
QED
