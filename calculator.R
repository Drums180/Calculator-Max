# Equipo 5 Calculator Max
# David Dominguez - A01570975
# Gabriel Medina
# Daniel Najera - A01709578
# Alejandra Suarez - A00835247

# Función de multiplicación
multiplicar <- function(a, b) {
  return(a * b)

# Función de División
dividir <- function(a, b) {
  if (b != 0) {
    return(a / b)
  } else {
    return("No es posible dividir por cero.")
  }
}

# Suma
sumar <- function(a, b) {
  return(a + b)
}

# Calculadora
while (TRUE) {
  menu()  # Mostrar el menú
  opcion <- as.numeric(readline("Seleccione una opción (1-5): "))
  
  if (opcion == 5) {
    cat("¡Hasta luego!\n")
    break
  }
  
  if (opcion >= 1 && opcion <= 4) {
    num1 <- as.numeric(readline("Ingrese el primer número: "))
    num2 <- as.numeric(readline("Ingrese el segundo número: "))
    
    # Realizar la operación según la opción seleccionada
    resultado <- switch(opcion,
                        sumar(num1, num2),
                        restar(num1, num2),
                        multiplicar(num1, num2),
                        dividir(num1, num2))
    
    cat("Resultado: ", resultado, "\n\n")
  } else {
    cat("Opción no válida. Por favor, seleccione una opción válida (1-5).\n\n")
  }
}

