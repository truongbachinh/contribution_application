<?php
include '../connect_db.php';
session_start();
?>

<?php
// Perform query
/** @var TYPE_NAME $conn */
$userid = 1;
$partnerId = 2;
$_SESSION["userid"] = $userid;
$_SESSION["partnerId"] = $partnerId;

$res = mysqli_fetch_array($conn->query("select DISTINCT tbl_chat.use_id_1 FROM tbl_chat WHERE tbl_chat.use_id_1 in ($userid, $partnerId) and tbl_chat.use_id_2 in ($userid, $partnerId)"), MYSQLI_ASSOC);
$useridIsOne = $res["use_id_1"] == $userid;
$_SESSION["useridIsOne"] = $useridIsOne;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>::Message::</title>
    <link rel="stylesheet" href="chat.css">
    <script>
        function ajax() {
            var req =  new XMLHttpRequest();
            req.onreadystatechange = function() {
                if (req.readyState == 4 && req.status == 200) {
                    document.getElementById('chat').innerHTML = req.responseText;
                }
            }
            req.open('GET','chat.php', true);
            req.send();
        }
        setInterval(function(){ajax()},1000);
    </script>
</head>
<body onload="ajax();">

<div class="page">
    <div class="display-box">
        <div id="chat"></div>
    </div>
    <div class="form">
        <form action="" method="post">
            <label for="message">Chat:</label><br>
            <textarea name="message" id="message-write" cols="30" rows="3"></textarea><br>
            <input type="submit" name="submit" value="Send">
        </form>
        <?php
        if (isset($_POST['submit'])) {

            $message = $_POST['message'];
            if ($message != null) {
                $query = "INSERT INTO tbl_chat (use_id_1, use_id_2, message) VALUES ('$userid','$partnerId', '$message')";
                $run = $conn->query($query);
                if ($run) {
                    echo "<embed loop='false' src='plink.wav' hidden='true' autoplay='true'/>";
                }
            }
        }
        ?>
    </div>
</div>

</body>
</html>
