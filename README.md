# Tutorial 4  
1. Proses Pembuatan TileMap dan LoseArea/WinArea kurang lebih sama dengan apa yang diajarkan oleh tutorial
2. Saya membuat obstacle baru yaitu Enemy, di mana enemy otomatis berjalan, Enemy memiliki Area2D yaitu LoseArea untuk mendeteksi jika Player collide. Enemy flip jika ada Area2D yang diberi script sehingga jika ada object yang memiliki metode flip, maka akan di flip. Hal ini merupakan polishing yang saya implementasikan sehingga enemy tidak jatuh ketika wandering di platform. Implementasi yang saya buat cukup simple dan masih ada implementasi yang lebih baik (tidak cukup waktu karena PPL pls forgivb). 
3. Spawner yang saya implementasi akan men-spawn Enemy yang saya jelaskan sebelumnya
4. Implementasi ini murni dari pengalaman + ChatGPT sebagai coding consultant

# Tutorial 6: Menu & In-Game GUI  

Pada tutorial ini, saya belajar bagaimana merancang dan mengimplementasikan menu serta antarmuka grafis dalam permainan. Proses ini membantu saya memahami pentingnya UI/UX dalam meningkatkan pengalaman pengguna. Selain itu, saya juga mendapat wawasan tentang bagaimana menghubungkan elemen GUI dengan logika permainan.  

Dalam implementasi saya, saya menambahkan beberapa fitur antarmuka untuk meningkatkan navigasi dalam permainan:  

## 1. Tombol pada layar Game Over untuk kembali ke menu utama  
- Saya menambahkan tombol yang memungkinkan pemain kembali ke menu utama setelah permainan berakhir atau ketika player mati.  
- Saya mengimplementasikan ini dedngan membuat UI Node baru dengan link button yang ketika ditekan akan memindahkan ke scene menu utama maupun retry level

## 2. Fitur Select Stage  
- Fitur ini memungkinkan pemain untuk memilih level permainan yang ingin dimainkan.  
- Saya mengimplementasikan ini dengan cara membuat UI Node baru dengan button-button untuk tiap level yang tersedia, UI Node ini akan muncul ketika player menekan Play pada menu utama.

## 3. Pause Menu  
- Saya juga menambahkan menu pause yang memungkinkan pemain untuk menjeda permainan kapan saja.  
- Menu ini memberikan opsi untuk melanjutkan permainan, kembali ke menu utama, atau keluar dari permainan.  
- Saya mengimplementasikan ini dengan menbamhakan PauseUI yang akan muncul ketika player menekan tombol escape. Saya mengimlpementasikan ini dengan mengubah `get_tree().paused` menjadi true sehingga node dengan proccess yang pausable akan berhenti.

Melalui implementasi ini, saya semakin memahami bagaimana elemen GUI dapat diintegrasikan dengan logika permainan untuk menciptakan pengalaman pengguna yang lebih baik.  
