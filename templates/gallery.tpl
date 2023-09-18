<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../templates/css/gallery.css">
</head>
<body>

    <form action="" method="post" enctype="multipart/form-data">
        <input type="file" name="files[]" id="file" multiple>
        <input type="submit" value="Загрузить">
    </form>

    <div id="holder">
        {{GALLERY}}
    </div>

</body>
</html>