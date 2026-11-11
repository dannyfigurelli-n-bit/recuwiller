--create table investidores (
--id serial primary key,
--nome varchar(255) not null,
--cpf varchar(11) unique not null,
--nivel_experiencia int default 0 check (nivel_experiencia >=0)
--)

--create table carteiras(
--id serial primary key,
--investidores_id int not null,
--endereço_wallet varchar(255) unique not null,
--rede_blockchain varchar(100) not null,
--saldo_usd decimal(15, 2) not null check (saldo_usd > 0) ,
--status varchar(20) default 'ativa' check (status in ('ativa', 'em analise', 'bloqueado', 'pausada')),
--foreign key  (investidores_id) references investidores (id) on delete cascade

--)

--create table corretoras(
--id serial primary key,
--nome_exchange varchar(255) not null,
--cnpj varchar(14) unique not null,
--email_suporte varchar(255) unique not null
--);

--create table criptomoedas(
--id serial primary key,
--corretora_id int not null,
--nome_moeda varchar(100) not null,
--preco_unitario_usd decimal(15, 2) not null check(preco_unitario_usd >0),
--categoria varchar(50) default 'layer1' check (categoria in ('layer1', 'deFi', 'memecoin', 'stablecoin')),
--foreign key (corretora_id) references corretoras(id) on delete cascade
--);

--create table transacoes_cripto (
--id serial primary key,
--carteira_id int not null,
--criptomoeda_id int not null,
--quantidade decimal(18, 8) not null check (quantidade > 0),
--valor_pago decimal(15, 2) not null check (valor_pago > 0),
--data_transacao timestamp default current_timestamp not null,
--foreign key (carteira_id) references carteiras(id) on delete cascade,
--foreign key (criptomoeda_id) references criptomoedas(id) on delete cascade
--);

--insert into investidores (nome, cpf, nivel_experiencia) values
--('carlos silva', '12345678901', 1),
--('adriana carvalho', '16945678954', 3),
--('joao gabriel', '29583064821', 4),
--('othelo drumond', '84280379184', 5),
--('eduardo ramos', '29685206941', 0)

--insert into carteiras (investidores_id, endereço_wallet, rede_blockchain, saldo_usd, status) values
--(1, '0x71C...0A1', 'ethereum', 1500.00, 'ativa'),
--(2, '0x82D...0B2', 'bitcoin', 5000.00, 'em analise'),
--(3, '0y91D...0A3', 'bitcoin', 250.00, 'ativa'),
--(4, '0xA4F...0D4', 'ethereum', 12000.00, 'ativa'),
--(5, '0xB5G...0E5', 'polygon', 800.75, 'pausada')

--insert into corretoras (nome_exchange, cnpj, email_suporte) values
--('binance', '12345678000101', 'suporte@binance.com'),
--('coinbase', '23456789000102', 'help@coinbase.com'),
--('kraken', '34567890000103', 'support@kreaken.com'),
--('mercado bitcoin', '1235487000101', 'suporte@mercadobitcoin.com'),
--('bybit', '1234658000101', 'suporte@bybit.com')

--insert into criptomoedas (corretora_id, nome_moeda, preco_unitario_usd, categoria) values
--(1, 'bitcoin', 65000.00, 'layer1'),
--(1, 'ethereum', 3500.00, 'layer1'),
--(2, 'solana', 140.00, 'layer1'),
--(3, 'uniswap', 8.50, 'deFi'),
--(4, 'USDT', 1.00, 'stablecoin')

insert into transacoes_cripto (carteira_id, criptomoeda_id, quantidade, valor_pago) values
(1, 1, 0.05000000, 3250.00),
(1, 2, 0.50000000, 1750.00),
(2, 3, 10.00000000, 1400.00),
(4, 1, 0.05000000, 6500.00),
(4, 5, 400.00000000, 400.00)