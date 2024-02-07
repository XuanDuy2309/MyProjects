<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Room List</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('font/bootstrap-icons.min.css') }}">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">list of rooms</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <a class="nav-link active text-white btn btn-success" aria-current="page" href="{{ route('Room.create') }}">Add new room</a>
            </div>
        </nav>
    </header>
    <container>
        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">room_number</th>
                <th scope="col">room_type</th>
                <th scope="col">availability</th>
                <th scope="col" colspan="3">Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($rooms as $room)
                <tr>
                    <th scope="row">{{ $room->id }}</th>
                    <td>{{ $room->room_number }}</td>
                    <td>{{ $room->room_type }}</td>
                    <td>{{ $room->availability }}</td>
                    <td><a href="{{ route('Room.show',$room->id) }}"><i class="bi bi-eye-fill"></i></a></td>
                    <td><a href="{{ route('Room.edit', $room->id) }}"><i class="bi bi-pen-fill"></i></a></td>
                    <td><a href="" data-bs-toggle="modal" data-bs-target="#{{'deleteModal'.$room->id}}">
                            <i class="bi bi-trash3-fill" ></i>
                        </a>
                        {{--modal delete--}}
                        <div class="modal fade" id="{{'deleteModal'.$room->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <form action="{{ route('Room.destroy',$room->id) }}" method="post">
                                @csrf
                                @method('DELETE')
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">DELETE</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <span>Comfirm to delete</span>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-danger">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div></td>
                </tr>
            @endforeach
            </tbody>

        </table>
        {{ $rooms->links() }}
    </container>
    <script src="{{ asset('js/bootstrap.bundle.js') }}"></script>
</body>
</html>
