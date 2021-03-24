<?php
include '../connect_db.php';

session_start();

$userid = $_SESSION["userid"];
$partnerId = $_SESSION["partnerId"];
$useridIsOne = $_SESSION["useridIsOne"];

$userid2 = $useridIsOne ? $partnerId : $userid;

$query = "SELECT * FROM tbl_chat WHERE tbl_chat.use_id_1 in ($userid, $partnerId) and tbl_chat.use_id_2 in ($userid, $partnerId) ORDER BY id ASC";
$run = $conn->query($query);
$name = mysqli_fetch_array($conn->query("SELECT user.username FROM user where user.u_id = $partnerId"), MYSQLI_ASSOC);

while($row = $run->fetch_array()):
    if ($row["use_id_1"] == $userid) {
        ?>
        <div class="chating_data_2">
            <span id="message"><?php echo $row['message'];?></span>
            <span id="date"><?php echo formatDate($row['date']);?></span>
        </div>
        <?php
    } else {
        ?>
        <div class="chating_data">
            <span id="name"><?php echo $name['username'];?></span><br>
            <span id="message"><?php echo $row['message'];?></span>
            <span id="date"><?php echo formatDate($row['date']);?></span>
        </div>
        <?php
    }
    ?>

<?php endwhile; ?>

