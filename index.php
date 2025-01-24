<?php
include 'db.php';

$sql = "SELECT * FROM photos ORDER BY created_at DESC";
$stmt = $pdo->query($sql);
$photos = $stmt->fetchAll();
?>

<h1>Photo Gallery</h1>

<?php if (count($photos) > 0): ?>
    <div class="gallery">
        <?php foreach ($photos as $photo): ?>
            <div class="photo">
                <img src="<?php echo $photo['image_path']; ?>" alt="<?php echo $photo['title']; ?>" width="100">
                <p><?php echo $photo['title']; ?></p>
                <a href="delete.php?id=<?php echo $photo['id']; ?>">Delete</a>
            </div>
        <?php endforeach; ?>
    </div>
<?php else: ?>
    <p>No photos uploaded yet.</p>
<?php endif; ?>