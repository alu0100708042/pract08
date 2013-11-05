
En esta práctica se pretende demostrar el uso de rspec
ayundándonos de la clase matriz desarrollada en prácticas anteriores.

Para ello hemos implementado un fichero matriz_spec.rb en el cuál añadimos
la comprobación de un nuevo método implementado en la clase matriz llamado to_s el cuál retornara
la representación en string de la matriz.

Del mismo modo hemos implementado una prueba para verificar las operaciones aritméticas entre matrices
(el producto y la suma), además hemos implementado un método que verifica si dos matrices son iguales,
mediante la sobrecarga del operador ==.

Hemos añadido a la clase matriz tres métodos de clase, que leen de fichero las matrices que se le pasan, 
y las transforma a arrays de arrays, y eso se le pasa a la llamada al constructor de la clase matriz.
Los métodos son:

- Matriz.read_File(nombrefichero) que busca dentro del fichero las matrices que se contiene, y 
además llama a los otros métodos para transformarla convenientemente.
- Matriz.mapmap que convertirá los datos del fichero en array de arrays.
- Matriz.to_m(m) que convierte m en una matriz que se le pasará a la llamada al constructor de la clase.
