@php
    function paginateSerial($data)
    {
        return $data->perPage() * ($data->currentPage() - 1);
    }



    $limit=isset($_GET['limit'])?(int)$_GET['limit']:0;
    if ($limit <=0) {
        $serial = 0;
    } else {
        $serial = paginateSerial($data);
    }
    $sl = $serial + 1;
    
@endphp
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        body {
            font-family: Arial;
            font-size: 10pt;
        }

        table {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }

        table th {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }

        table th,
        table td {
            padding: 5px;
            border: 1px solid #ccc;
        }
    </style>

</head>

<body>
    <table border="1" width="100%" class="table table-striped table-dark">
        <thead>

            <tr>
                <th>Sl No</th>
                <th>ID</th>
                <th>Title</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $item)
                <tr>
                    <td align="center">{{ $sl++ }}</td>
                    <td align="center">{{ $item->id}}</td>
                    <td align="center">{{ $item->title }}</td>
                </tr>
            @endforeach
        </tbody>
       
    </table>
</body>

</html>
