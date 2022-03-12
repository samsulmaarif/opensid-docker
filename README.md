## OpenSID Docker

 OpenSID adalah Sistem Informasi Desa (SID) yang sengaja dibuat supaya terbuka dan dapat dikembangkan bersama-sama oleh komunitas peduli SID. Lebih lengkap mengenai ini silakan menuju ke repo [OpenSID](https://github.com/OpenSID/OpenSID).

Repositori ini merupakan sekumpulan berkas pendukung jika Anda menginginkan melakukan instalasi OpenSID menggunakan Docker Container dan Docker Compose.

Langkah Instalasinya adalah sebagai berikut: yang pertama, kita perlu clone repo OpenSID.

```
git clone -b umum https://github.com/OpenSID/OpenSID.git
cd OpenSID
```

Download repo ini, lalu copy/salin folder `.docker` dan berkas `docker-compose.yml` ke dalam folder OpenSID sehingga struktur direktorinya menjadi seperti ini:

```
├── assets
├── cacert.pem
├── catatan_rilis.md
├── catatan_singkat_library_yang_digunakan.md
├── contoh_data_awal_20220301.sql
├── desa
├── desa-contoh
├── .docker
├── docker-compose.yml
├── donjo-app
├── favicon.ico
├── .git
├── .gitattributes
├── .github
├── .gitignore
├── htaccess.txt
├── idm_2022_3301092008.json
├── index.php
├── LICENSE
├── logs
├── README.md
├── securimage
├── system
├── template-surat
├── themes
├── vendor
└── version.json
```

lakukan perubahan yang diperlukan pada berkas `docker-compose.yml`, misal Anda ingin mengubah password MySQL-nya, ganti `rahasia` dengan password yang lebih aman.

Selanjutnya, buat/salin folder `desa` dari `desa-contoh`

```bash
cp -a desa-contoh desa
```

pada file `desa/config/database.php`, sesuaikan konfigurasi database-nya dengan file yml tadi. Misalnya sebagai berikut

```php
$db['default']['hostname'] = 'db';
$db['default']['username'] = 'opensid';
$db['default']['password'] = 'rahasia';
$db['default']['database'] = 'opensid';
```

> *CATATAN*: db hostname harus ditulis sebagai `db`, jika tidak, aplikasi akan error karena tidak dapat terhubung dengan database. Kecuali Anda mengubah file `docker-compose.yml` pada bagian nama service db.

Jika proses di atas sudah dilakukan, sekarang saatnya kita jalankan proses deployment-nya.

```bash
docker-compose up --build
```

Tunggu hingga sekitar 10-30 menit. Kecepatannya tentunya tergantung dari spesifikasi server Anda dan koneksi internet yang digunakan. Selanjutnya eksekusi perintah berikut untuk mengubah permission folder aplikasi di dalam container.

```
docker-compose exec php chown -Rf www-data.www-data /public_html
```

Setelah selesai, silakan akses melalui browser di url http://localhost atau http://ip-server
