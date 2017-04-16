<?php
$title = 'Quelques panneaux';
include('../template/header.html');
?>
<!--insert some markup-->
<table>
  <tr>
    <th>Panneau</th>
    <th>Signification</th>
  </tr>

    <?php
    try {
        $db = new PDO("mysql:host=localhost;dbname=securoute", "root", "");
    } catch (PDOException $e) {
        echo $e;
    }

    $query = "SELECT * FROM panneaux";
    $prep = $db->prepare($query);
    $prep->execute();

    $data = $prep->fetchAll();

    foreach ($data as $key => $value) { ?>
        <tr>
            <td class='panneau'><img src="<?= $value['img'] ?>" /></td>
            <td class='desc'> <?= $value['description'] ?> </td>
        </tr>
    <?php } ?>
</table>

<?php
include('../template/footer.html');
?>
