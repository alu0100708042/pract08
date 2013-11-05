require "rspec"
require "matriz"
describe Matriz do
	


	# Se ejecuta antes de cada prueba.
	before :each do
		m1, m2 = Matriz.read_File('./lib/datos')
		@m_MatrizA = Matriz.new(m1)
		@m_MatrizB = Matriz.new(m2)
		@m_MatrizC = Matriz.new(m1)

	end
	context 'Verificar el to_s' do
		it "Comprobar metodo to_s" do
			@m_MatrizA.to_s.should == "[[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]]"
		end
		
	end
	
	context 'Operaciones aritmeticas' do
	
		it "Multiplicar" do							
			@m_MatrizA.multiplicar(@m_MatrizB).to_s.should == "[[15.0, 41.0, 39.0], [45.0, 95.0, 90.0], [75.0, 149.0, 141.0]]"
		end

		it "Sumar" do							
			@m_MatrizA.sumar(@m_MatrizB).to_s.should == "[[8.0, 6.0, 6.0], [5.0, 10.0, 12.0], [9.0, 17.0, 17.0]]"
		end
		
	end
	
	context 'Comprobar sobrecarga de operadores' do 
		it "Comprobar el metodo ==" do
			(@m_MatrizA==@m_MatrizC).should == true
		end
	end

end

