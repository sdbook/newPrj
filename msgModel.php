<?php
require("dbconfig.php");
function msgUpdate($id, $title, $msg, $name, $cate) 
{
    if ($id>0) {
        $sql = "update guestbook set title=?, msg=?, name=?, cate=? where id=?";
        $stmt = mysqli_prepare($db, $sql);
        mysqli_stmt_bind_param($stmt, "ssssi", $title, $msg,$name,$cate, $id);
        mysqli_stmt_execute($stmt); //執行SQL
        $ret = "message updated";
    } else $ret= "empty message id.";
    return $ret;
}

function msgDelete($id) 
{
    if ($id>0) {
        $sql = "delete from guestbook where id=?;";
        $stmt = mysqli_prepare($db, $sql );
        mysqli_stmt_bind_param($stmt, "i", $id);
        mysqli_stmt_execute($stmt);

        $ret = "message deleted.";
    } else {
        $ret ="empty id, cannot delete.";
    }
    return $ret;
}

function msgAdd( $title, $msg, $name, $cate) 
{
	$sql = "insert into guestbook (title, msg, name,$cate) values (?, ?, ?,?)";
	$stmt = mysqli_prepare($db, $sql); //prepare sql statement
	mysqli_stmt_bind_param($stmt, "sss", $title, $msg,$name,$cate); //bind parameters with variables
	mysqli_stmt_execute($stmt);  //執行SQL
    $ret = "message updated";
    return $ret;
}

function msgGetOne($id)
{
	$sql = "select * from guestbook where id=?;";
	$stmt = mysqli_prepare($db, $sql );
	mysqli_stmt_bind_param($stmt, "i", $id);
	mysqli_stmt_execute($stmt);
	$result = mysqli_stmt_get_result($stmt); 
    return mysqli_fetch_array($result);
}

function msgGetAll()
{
    global $db;
	$sql = "select * from guestbook;";
	$stmt = mysqli_prepare($db, $sql );
	//mysqli_stmt_bind_param($stmt, "i", $id);
	mysqli_stmt_execute($stmt);
	return mysqli_stmt_get_result($stmt); 
}
?>
