<?php
class Users {
	private $db;
	function __construct($dbh) {
		$this->db = $dbh;
	}
	public function register($fname, $lname, $uname, $umail, $upass) {
		try {
			$new_password = password_hash($upass, PASSWORD_DEFAULT);
			$stmt = $this->db->prepare("INSERT INTO cms_users(UserName, UserEmail, UserPass)
                                                      VALUES(:uname, :umail, :upass)");
			$stmt->bindparam(":uname", $uname);
			$stmt->bindparam(":umail", $umail);
			$stmt->bindparam(":upass", $new_password);
			$stmt->execute();

			return $stmt;
		} catch (PDOException $e) {
			echo $e->getMessage();
		}
	}
	public function update($uname, $umail, $upass) {
		try {
			$new_password = password_hash($upass, PASSWORD_DEFAULT);
			try {
				$stmt = $this->db->prepare("SELECT * FROM cms_users WHERE UserName=:uname OR UserEmail=:umail LIMIT 1");
				$stmt->execute(array (':uname' => $_SESSION['user_name']));
				$userRow = $stmt->fetch(PDO::FETCH_ASSOC);
				if ($stmt->rowCount()>0) {
					if (password_verify($upass, $userRow['UserPass'])) {
						return true;
					} else {
						return false;
					}
				}
			} catch (PDOException $e) {
				echo $e->getMessage();
			}

			/*$stmt = $dbh->prepare("UPDATE cms_users SET
				UserNick=:unick,
				UserEmail=:uemail
			WHERE id=:id");
			$stmt->bindparam(':unick', $uname);
			$stmt->bindparam(':uemail', $umail);
			$stmt->bindparam(':id', $id);
			$stmt->execute();*/
			//header("Location: index.php");*/

			return $stmt;
		} catch (PDOException $e) {
			echo $e->getMessage();
		}
	}
	public function login($uname, $umail, $upass) {
		try {
			$stmt = $this->db->prepare("SELECT * FROM cms_users WHERE UserName=:uname OR UserEmail=:umail LIMIT 1");
			$stmt->execute(array (':uname' => $uname, ':umail' => $umail));
			$userRow = $stmt->fetch(PDO::FETCH_ASSOC);
			if ($stmt->rowCount()>0) {
				if (password_verify($upass, $userRow['UserPass'])) {
					$_SESSION['user_session'] = $userRow['ID'];
					$_SESSION['user_rank'] = $userRow['UserLevel'];
					$_SESSION['user_name'] = $userRow['UserName'];
					return true;
				} else {
					return false;
				}
			}
		} catch (PDOException $e) {
			echo $e->getMessage();
		}
	}
	public function is_loggedin() {
		if (isset($_SESSION['user_session'])) {
			return true;
		}
	}
	public function redirect($url) {
		header("Location: $url");
	}
	public function logout() {
		session_destroy();
		unset($_SESSION['user_session']);
		return true;
	}
}