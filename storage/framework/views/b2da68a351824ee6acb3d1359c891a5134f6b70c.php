<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Room action</title>
    <link rel="stylesheet" href="<?php echo e(asset('css/bootstrap.min.css')); ?>">

</head>
<body>
<div class="mx-auto" style="max-width: 980px">
    <h1 class="text-success text-center">EDIT ROOM <?php echo e($room->room_number); ?></h1>
    <a href="<?php echo e(route('Room.index')); ?>" class="btn btn-primary my-3">Back to list of rooms</a>
    <form action="<?php echo e(route('Room.update',$room->id)); ?>" method="post">
        <?php echo csrf_field(); ?>
        <?php echo method_field('put'); ?>
        <div class="form-group text-center">
            <select name="room_number" id="" class="form-control my-3" >
                <?php $__currentLoopData = $rooms; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($item->room_number); ?>"><?php echo e($item->room_number); ?></option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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


<?php /**PATH /Users/daovu/Projects/lara02/resources/views/Room/edit.blade.php ENDPATH**/ ?>