<?php
if (!empty($_FILES['file'])) {
    move_uploaded_file($_FILES['file']['tmp_name'], __DIR__ . '/files/' . $_FILES['file']['name']);
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Uploader</title>
    <meta charset="utf-8">    
</head>
<body>

<form enctype="multipart/form-data" method="post">
    <input type="file" name="file"><br>
    <input type="submit" value="Upload">
</form>

</body>
</html>