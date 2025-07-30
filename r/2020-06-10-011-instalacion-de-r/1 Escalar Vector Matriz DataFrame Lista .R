#----
# Vectores
#----

# Concatenación de elementos con **`c()`**.

c(0.5, 0.6, 0.25)            # números decimales (double)
c(9L, 10L, 11L, 12L, 13L)    # números enteros (integer)
c(9:13)                      # secuencia de números enteros (integer sequence)
c(TRUE, FALSE, FALSE)        # valores lógicos (logical)
c(1+0i, 2+4i)                # números complejos (complex)
c("a", "b", "c")             # caracteres (character)

#----
# Acciones con vectores
#----

# Asignar los vectores a nombres:

dbl <- c(0.5, 0.6, 0.25)     
chr <- c("a", "b", "c")      

# Imprimir los vectores dbl y chr en la consola:
dbl
chr
# Verificar el número de elementos en dbl y chr:
length(dbl)
# Verificar el tipo de dato de dbl y chr:
typeof(dbl)
# Combinar dos vectores:
c(dbl, dbl)
c(dbl, chr)

#----
# Operaciones aritméticas con vectores
#----

# Definir dos nuevos vectores numéricos `a` y `b` cada uno con 4 elementos:
a <- c(1, 2, 3, 4)
b <- c(10, 20, 30, 40) 

# Multiplicar cada elemento en a por 5 (multiplicación escalar):
a * 5
# Multiplicar los elementos en a por los elementos en b (multiplicación de vectores):
a * b
# Multiplicar los elementos en a por los elementos de un vector numérico v de longitud 5:
v <- c(1.1, 1.2, 1.3, 1.4, 1.5) 
a*v

#----
# Matrices
#----

# Opción (1): Combinar dos vectores por columnas con cbind():
A <- cbind(a, b)  

# Opción (2): Combinar dos vectores por filas con rbind():
B <- rbind(a, b)  

# Opción (3): Crear una matriz a partir de los elementos de un vector con `matrix()`:
A <- matrix(a, ncol = 2, nrow = 2)

A <- matrix(a, ncol = 2)

B <- matrix(a, ncol = 2, byrow = TRUE)

#----
# Acciones con matrices
#----

# Verificar el número de filas:
nrow(A)
# Verificar el número de columnas:
ncol(A)
# Verificar la dimensión `[nrow, ncol]`:
dim(A)
# Combinar dos matrices:
D.wide <- cbind(A, A)
D.long <- rbind(A, A)
D <- cbind(D.wide, D.long)

#----
# Operaciones aritméticas con matrices
#----

# Suma de matrices:
B + B
# Multiplicación escalar:
B * 2
# Multiplicación elemento a elemento:
a = B * B
# Multiplicación de matrices:
C = B %*% B

#----
# More matrix arithmetic
#----

# Transpose t()

D.wide

t(D.wide)

# Determinant det()
det(B)

# Inverse solve() (only if det() diferente de 0)

solve(B)

# Eigenvalues eigen() (only for square and symmetric matrices)


#----
# Data frames
#----

dbl <- c(0.5, 0.6, 0.25, 1.2, 0.333)      # números decimales (double)
int <- c(9L, 10L, 11L, 12L, 13L)          # números enteros (integer)
lgl <- c(TRUE, FALSE, FALSE, TRUE, TRUE)  # valores lógicos (logical)
chr <- c("a", "b", "c", "d", "e")         # caracteres (character)
df <- data.frame(dbl, int, lgl, chr)
df

# Acciones con data frames

# Verificar el número de filas:
nrow(df)

# Verificar el número de columnas:
ncol(df)

# Verificar la dimensión `[nrow, ncol]`:
dim(df)        

#----
# Listas
#----

a <- 1L                                   # escalar
dbl <- c(0.5, 0.6, 0.25, 1.2, 0.333)      # vector numérico de longitud 5
chr <- c("a", "b", "c")                   # vector de caracteres de longitud 3
v <- c(1.1, 1.2, 1.3, 1.4)
mat <- matrix(v, ncol = 2)                # matriz 2 x 2

l <- list(a, dbl, chr, mat)
l
