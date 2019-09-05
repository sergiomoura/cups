<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
</head>
<body>
	essa view deve listar os produtos...
	<table>
		<thead>
			<td>id</td>
			<td>Nome</td>
			<td>Preço</td>
			<td>Qtde</td>
			<td>Categoria</td>			
		</thead>
		<tbody>
			@foreach($produtos as $p)
			<tr>
				<td>{{ $p['id'] }}</td>
				<td>{{ $p['nome'] }}</td>
				<td>{{ $p['preco'] }}</td>
				<td>{{ $p['quantidade'] }}</td>
				<td>{{ $p['categoria']['nome'] }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
	{{ dd($produtos) }}
</body>
</html>