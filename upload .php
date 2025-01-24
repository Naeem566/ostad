<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_FILES['photo'])) {
    $title = $_POST['title'];
    $file = $_FILES['photo'];

    $allowed_types = ['image/jpeg', 'image/png', 'image/gif'];
    if (!in_array($file['type'], $allowed_types)) {
        die('Invalid file type. Only images are allowed.');
    }

    $upload_dir = 'uploads/';
    $filename = basename($file['name']);
    $filepath = $upload_dir . $filename;

    if (move_uploaded_file($file['tmp_name'], $filepath)) {
        $sql = "INSERT INTO photos (title, image_path) VALUES (?, ?)";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$title, $filepath]);

        echo "File uploaded successfully!";
    } else {
        echo "Failed to upload file.";
    }
}
?>

<form action="upload.php" method="post" enctype="multipart/form-data">
    <input type="text" name="title" placeholder="Enter title" required>
    <input type="file" name="photo" accept="image/*" required>
    <button type="submit">Upload</button>
</form>