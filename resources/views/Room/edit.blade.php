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
    <h1 class="text-success text-center">EDIT ROOM {{ $room->room_number }}</h1>
    <a href="{{ route('Room.index') }}" class="btn btn-primary my-3">Back to list of rooms</a>
    <form action="{{ route('Room.update',$room->id) }}" method="post">
        @csrf
        @method('put')
        <div class="form-group text-center">
            <select name="room_number" id="" class="form-control my-3" >
                @foreach($rooms as $item)
                    <option value="{{ $item->room_number }}">{{ $item->room_number }}</option>
                @endforeach
            </select>
            <select name="room_type" id="" class="form-control my-3" >
                <option value="standard">standard</option>
                <option value="deluxe">deluxe</option>
                <option value="suite">suite</option>

            </select>
            <select name="availability" id="" class="form-control my-3" >
                <option value="available">available</option>
                <option value="occupied">deluxe</option>
                <option value="under maintenance">under maintenance</option>

            </select>
            <button type="submit" class="btn btn-success">Save</button>
        </div>

    </form>
</div>
</body>
</html>


