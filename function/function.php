<?php 
	function tgl_indonesia($date) {
		$hari = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu");
		$bulan = array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");

		$thn = substr($date, 0, 4);
		$bln = substr($date, 5, 2);
		$tgl = substr($date, 8, 2);
		$waktu = substr($date, 11, 5);
		$hr = date("w", strtotime($date));

		$result = $hari[$hr].", ".$tgl." ".$bulan[(int)$bln-1]." ".$thn." ".$waktu." WIB";
		return $result;
	}
 ?>