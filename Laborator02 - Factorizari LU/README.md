# Factorizari LU

## Notatii

* L - matrice inferior triunghiulara (are zerouri deasupra diagonalei principale)
* U - matrice superior triunghiulara (are zerouri sub diagonala principala)
* SST - sistem superior triunghiular (de forma $Lx = b$)
* SIT - sistem inferior triunghiular (de forma $Ux = b$)

---

## Metode specifice

* Crout - $A = LU,\ u_{ii} = 1$
* Doo Little - $A = LU,\ l_{ii} = 1$
* Cholesky - $A = LL^{T},\ A - matrice\ simetrica$

---

## Rezolvare sistemelor de ecuatii liniare

* Pornim de la un sistem generic de ecuatii liniare $Ax = b$.
* Factorizam matricea $A = LU$ cu una dintre cele 3 metode.
* Sistemul devine $LUx = b$, notam $y = Ux$.
* Rezolvam SIT $Ly = b$ cu metoda prezentata la laborator.
* Rezolvam SST $Ux = y$ cu metoda prezentata la laborator.