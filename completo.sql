create table Cidade (
CodCidade int not null,
Nome varchar(100) not null,
primary key (CodCidade)
);
select * from cidade;
desc Cidade;


create table Pessoa (
CodPessoa int auto_increment not null,
Nome varchar(100) not null,
Telefone char(11),
CodCidade int not null,
primary key (CodPessoa),
foreign key (CodCidade) references Cidade (CodCidade)
);
select * from Pessoa;
desc Pessoa;


create table Escola (
Nome varchar(100) not null,
CodEscola  int auto_increment not null,
CodCidade int not null,
CodDiretor int not null,
primary key (CodEscola),
foreign key (CodCidade) references Cidade (CodCidade),
foreign key (CodDiretor) references Pessoa (CodPessoa)
);
select * from Escola;
desc Escola;


create table Professor (
CodPessoa int not null,
RG varchar(9) not null,
CPF char(11) not null,
Titulacao varchar(50) not null,
foreign key (CodPessoa) references Pessoa (CodPessoa)
);
select * from Professor;
desc Professor;


create table Turma (
CodTurma int auto_increment not null,
Nome varchar(10) not null,
CodEscola int not null,
primary key (CodTurma),
foreign key (CodEscola) references Escola (CodEscola)
);
select * from Turma;
desc Turma;



create table Disciplina (
Nome varchar(50),
CodDisciplina int auto_increment not null,
primary key (CodDisciplina)
);
select * from Disciplina;
desc Disciplina;


create table Contato (
Nome varchar(100) not null,
Telefone varchar(15), -- Telefone do Aluno
CodAluno int not null,
primary key (CodAluno, Nome), -- Nome do Contato e CodAluno para chave primária composta
foreign key (CodAluno) references Pessoa (CodPessoa)
);
select * from Contato;
desc Contato;
drop table contato;


create table Aluno (
CodPessoa int not null,
Matricula_Aluno varchar(15) not null,
Data_Nascimento varchar(11) not null,
CodTurma int not null,
foreign key (CodPessoa) references Pessoa (CodPessoa),
foreign key (CodTurma) references Turma (CodTurma)
);
select * from Aluno;
desc Aluno;


create table Ministra (
CodProfessor int not null,
CodDisciplina_Ministrada int not null,
CodTurma_Ministrada int not null,
foreign key (CodProfessor) references Pessoa (CodPessoa),
foreign key (CodDisciplina_Ministrada) references Disciplina (CodDisciplina),
foreign key (CodTurma_Ministrada) references Turma (CodTurma)
);
select * from Ministra;
desc Ministra;


-- CONSULTAS

-- Questão 1
-- Eu e esse where not exists precisamos de mais tempo para nos entedermos...
select e.Nome, c.Nome from escola e
join Cidade c
on e.CodCidade = c.CodCidade
where not exists (
	select 1 from Aluno a
	join Turma t on a.CodTurma = t.CodTurma
	join Pessoa p on a.CodPessoa = p.CodPessoa
	where t.CodEscola = e.CodEscola and p.CodCidade <> e.CodCidade
);


-- Questão 2
-- Mole
select p.Nome, a.Matricula_Aluno from Aluno a
join pessoa p on a.codpessoa = p.codpessoa
where a.CodPessoa not in (select CodAluno from Contato);


-- Questão 3
-- Boa questão deu pra pegar bem o conceito de count
select t.CodTurma, t.Nome from Turma t
join Aluno a on t.CodTurma = a.CodTurma
group by t.CodTurma, t.Nome
having count(a.CodPessoa) > 5;


-- Questão 4
-- bem parecida com a 3, mas agora com dois joins
select f.CodPessoa as CodProfessor, p.Nome, f.Titulacao from Professor f 
join Pessoa p on f.CodPessoa = p.CodPessoa
join Ministra m on f.CodPessoa = m.CodProfessor
group by f.CodPessoa, p.Nome, f.Titulacao
having count(distinct m.CodTurma_Ministrada) >= 3;


-- Questão 5
-- Aquele concat me custou um tempo, talvez dois...
select d.Nome as Disciplina, count(distinct p.CodPessoa) as Professores_Habilitados, count(distinct m.CodProfessor) as Professores_Efetivos
from Disciplina d
left join Professor p on p.Titulacao like concat('%', d.Nome, '%')
left join Ministra m on m.CodDisciplina_Ministrada = d.CodDisciplina
group by d.CodDisciplina, d.Nome
ORDER BY d.CodDisciplina;


-- Questão 6
-- A lógica dessa foi fácil mas tinha esquecido o operador de diferente
select e.Nome as Nome_Da_Escola, p.Nome from Escola e
join Pessoa p on e.CodDiretor = p.CodPessoa
where p.CodCidade <> e.CodCidade;


-- Questão 7
-- Enrolei um pouco com os group by, mas é mole
select e.Nome, count(distinct t.CodTurma) as Qtd_De_Turmas, count(distinct m.CodProfessor) as Qtd_De_Professores from Escola e
join Turma t on e.CodEscola = t.CodEscola
join Ministra m on t.CodTurma = m.CodTurma_Ministrada
group by e.CodEscola, e.Nome;


-- Questão 8
-- Fiquei meia hora batendo cabeça sendo que era só dividir o count de aluno pelo count de professor lol
select e.Nome, count(distinct a.CodPessoa) as Qtd_De_Alunos, count(distinct m.CodProfessor) as Qtd_De_Professores,
(count(distinct a.CodPessoa)/count(distinct m.CodProfessor)) as Razao_Aluno_Professor from Turma t
join Escola e on t.CodEscola = e.CodEscola
join Aluno a on t.CodTurma = a.CodTurma
join Ministra m on t.CodTurma = m.CodTurma_Ministrada
group by e.CodEscola;

-- Questão 9
-- Essa morreu em menos de 1 minuto, coitada
select a.Matricula_Aluno, p.Nome, c.Nome, c.Telefone from Contato c
join Aluno a on c.CodAluno = a.CodPessoa
join Pessoa p on c.CodAluno = p.CodPessoa
order by a.Matricula_Aluno, c.Nome;


-- Questão 10
-- Tive problemas de novo com o group by, mas é fácil essa
select p.Nome, m.CodProfessor from Ministra m
join Pessoa p on m.CodProfessor = p.CodPessoa
group by m.CodProfessor
having count(distinct m.CodTurma_Ministrada) = 1;


-- Parte 2
-- Questão 1
update Contato
set CodAluno = B
where CodAluno = A;


-- Questão 2
set @ProfRemovido = X;
-- Verificar se o professor é diretor de alguma escola
select * from Escola  where CodDiretor = @ProfRemovido;


set @NovoDiretor = (
    select CodPessoa from Professor
    where CodPessoa not in (
        select CodDiretor from Escola
    )
    and CodPessoa <> @ProfRemovido
    limit 1
);

-- Atualizar a escola, caso ele seja diretor
update Escola
set CodDiretor = @NovoDiretor
where CodDiretor = @ProfRemovido;

-- Remover vínculos do professor na tabela Ministra
delete from Ministra
where CodProfessor = @ProfRemovido;

-- Remover da tabela Professor
delete from Professor
where CodPessoa = @ProfRemovido;


-- Questão 3
set @P1 = X; -- Professor que sai (licença)
set @P2 = Y; -- Professor substituto

-- Inserir disciplinas e turmas onde P2 não está cadastrado, mas P1 está
insert into Ministra (CodProfessor, CodDisciplina_Ministrada, CodTurma_Ministrada)
select @P2, m.CodDisciplina_Ministrada, m.CodTurma_Ministrada from Ministra m
left join Ministra m2 ON m2.CodProfessor = @P2 
    and m2.CodDisciplina_Ministrada = m.CodDisciplina_Ministrada
    and m2.CodTurma_Ministrada = m.CodTurma_Ministrada
where m.CodProfessor = @P1
  and m2.CodProfessor is null;

-- Substituir P1 por P2 em todas as ministrações
update Ministra
set CodProfessor = @P2
where CodProfessor = @P1;



