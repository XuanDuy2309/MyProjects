<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Room action</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">

</head>
<body>
<div class="mx-auto" style="max-width: 980px">
    <h1 class="text-success text-center">ROOM {{ $room->room_number }} DETAIL</h1>
    <a href="{{ route('Room.index') }}" class="btn btn-primary my-3">Back to list of rooms</a>
    <div class="form-group text-center">
        <input type="text" class="form-control my-3" value="{{ 'room number: '.$room->room_number }}" readonly>
        <input type="text" class="form-control my-3" value="{{ 'room type: '.$room->room_type }}"  readonly>
        <input type="text" class="form-control my-3" value="{{ 'availability: '.$room->availability }}" readonly>
    </div>

</div>
</body>
</html>

