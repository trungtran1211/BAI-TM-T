<?php 
	/*$conn = mysqli_connect("localhost", "root", "")  or die("Kết nối database không thành công");
    mysqli_select_db($conn,'webbanhang');
	mysqli_query($conn,"set names 'utf8'");*/
	class database{
		//khai bao thuoc tinh
		private $conn = null;
		private $host = 'localhost';
		private $user = 'root';
		private $pass = '';
		private $data = 'pttk2';
		private $result = null;
		//xay dung cac phuong thuc
		private function connect(){
			$this->conn = new mysqli($this->host,$this->user,$this->pass,$this->data) or die ("ket noi khong thanh cong");
			$this->conn->query("set names utf8");
		}
		//phiuong thuc select du lieu
		public function select($sql){
			$this->connect();
			$this->result = $this->conn->query($sql);
		}
		//query
		public function fetch(){
			if($this->result->num_rows > 0){
				$rows = $this->result->fetch_array();
			}else{
				$rows = "Không tìm thấy dữ liệu";
			}
			return $rows;
		}


		//query
		public function fetchFirst(){

			if($this->result->num_rows > 0){
				$row = $this->result->fetch_assoc();
			}else{
				$rows = "Không tìm thấy dữ liệu";
			}
			return $row['total'];
		}

		public function command($sql){
			$this->connect();
			$this->conn->query($sql);
		}
	}
?>