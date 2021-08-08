<?php
class MyDB {
    public function __construct()
    {
        $host = "localhost";
        $dbname = "oop_php";
        $username = "root";
        $password = "";
        $this->db = new PDO("mysql:host={$host};dbname={$dbname}", $username, $password);
    }

    public function show()
    {
        $query = $this->db->prepare("SELECT * FROM data_warga1");
        $query->execute();
        $data = $query->fetchAll();
        return $data;
    }

    public function add_data($no_ktp,$nama_lengkap,$alamat,$no_hp)
    {
        $data = $this->db->prepare("INSERT INTO data_warga1 (no_ktp, nama_lengkap, alamat, no_hp) VALUES ('1', '3267700', 'Mark', 'Depok', '010000')");

        $data->bindParam(1, $no_ktp);
        $data->bindParam(2, $nama_lengkap);
        $data->bindParam(3, $alamat);
        $data->bindParam(4, $no_hp);
        
        $data->execute();
        return $data->rowCount();
    }

    public function get_by_id($data_warga1){
        $query = $this->db->prepare("SELECT * FROM data_warga1 where id=?");
        $query->bindParam(1,$data_warga1);
        $query->execute();
        return $query->fetch();
    }

    public function delete($data_warga1)
    {
        $query = $this->db->prepare("DELETE FROM data_warga1 where id=?");

        $query->bindParam(1,$oop_php);

        $query->execute();
        return $query->rowCount();
    }
}
?>