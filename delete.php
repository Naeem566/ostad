<?php
include 'db.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "SELECT image_path FROM photos WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$id]);
    $photo = $stmt->fetch();

    if ($photo) {
        unlink($photo['image_path']);

        $sql = "DELETE FROM photos WHERE id = ?";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$id]);

        echo "Photo deleted successfully!";
    } else {
        echo "Photo not found.";
    }
}
?>