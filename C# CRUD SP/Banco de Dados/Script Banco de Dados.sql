-- CHAMAR BANCO PARA MANIPULA��O --
USE CRUDSP

-- CRIA��O DA PROCEDURE DE INSER��O --

CREATE PROC InserirFuncionarioSP
@ID_funcionario int,
@Nome_funcionario nvarchar(50),
@Cidade nvarchar(50),
@Idade float,
@Genero nvarchar(20),
@Contato nvarchar(50),
@Cargo nvarchar(50),
@PretensaoS nvarchar(50)
AS
Insert into tblFuncionario (ID_funcionario,Nome_funcionario,Cidade,Idade,Genero,Contato,Cargo,PretensaoS)
values (@ID_funcionario,@Nome_funcionario,@Cidade,@Idade,@Genero,@Contato,@Cargo,@PretensaoS)

-- EXECUTA STORED PROCEDURE DE INSER��O --
exec InserirFuncionarioSP 2, 'Ana Marques', 'S�o Vicente', 50, 'Feminino', '13993252631','Design UX/UI', 3500

-- CRIA��O DA PROCEDURE DE LISTAGEM --

CREATE PROC ListarFuncionarioSP
AS
BEGIN
SELECT * FROM tblFuncionario 
END

-- EXECUTA STORED PROCEDURE DE LISTAGEM --
exec ListarFuncionarioSP

-- CRIA��O DA PROCEDURE DE EDI��O --

CREATE PROC EditarFuncionarioSP
@ID_funcionario int,
@Nome_funcionario nvarchar(50),
@Cidade nvarchar(50),
@Idade float,
@Genero nvarchar(20),
@Contato nvarchar(50),
@Cargo nvarchar(50),
@PretensaoS nvarchar(50)
AS
Update tblFuncionario set Nome_funcionario=@Nome_funcionario,Cidade=@Cidade,Idade=@Idade,Genero=@Genero,Contato=@Contato,Cargo=@Cargo,PretensaoS=@PretensaoS WHERE ID_funcionario=@ID_funcionario

-- EXECUTA STORED PROCEDURE DE LISTAGEM --
exec ListarFuncionarioSP

-- CRIA��O DA PROCEDURE EXCLUS�O --

CREATE PROC DeletarFuncionarioSP
@ID_funcionario int
AS
DELETE tblFuncionario WHERE ID_funcionario = @ID_funcionario

-- EXECUTA STORED PROCEDURE DE LISTAGEM --
exec DeletarFuncionarioSP 

-- CARREGA ESPECIFICA��ES DO FUNCION�RIO --

CREATE PROC CarregarEspecificacoesFunc
@ID_funcionario int
AS
Select * from tblFuncionario WHERE ID_funcionario = @ID_funcionario

