# Hướng dẫn lệnh khởi động OpenClaw & CLIProxy

Để chạy hệ thống này sau khi đã cài đặt xong, bạn hãy thực hiện theo thứ tự sau:

## 1. Khởi động Máy chủ CLIProxy
Mở một cửa sổ Terminal tại thư mục `Chatbot` và chạy:
```powershell
& "C:\Users\Admin\AppData\Local\Microsoft\WinGet\Packages\LuisPater.CLIProxyAPI_Microsoft.Winget.Source_8wekyb3d8bbwe\cli-proxy-api.exe"
```
*(Giữ cửa sổ này luôn mở để làm cầu nối API).*

## 2. Quản lý Đăng nhập AI (Gemini/Claude)
Nếu bạn chưa đăng nhập hoặc cần đổi tài khoản, mở một Terminal khác và chạy:
```powershell & "C:\Users\Admin\AppData\Local\Microsoft\WinGet\Packages\LuisPater.CLIProxyAPI_Microsoft.Winget.Source_8wekyb3d8bbwe\cli-proxy-api.exe" -tui
```
- Mật khẩu: **`admin`**
- Chọn `[Login Google Account]` để dùng Gemini.
- Chọn `[Login Claude OAuth]` để dùng Claude (Opus).

## 3. Khởi động Giao diện OpenClaw
Mở một Terminal khác (hoặc dùng Terminal ở bước 2 sau khi xong) và chạy:
```cmd
cmd /c openclaw tui
```

## 4. Cài đặt Kênh liên lạc (Channel)
Để kết nối OpenClaw với WhatsApp, Telegram hoặc các nền tảng khác:

- **Đăng nhập WhatsApp:**
  ```cmd
  cmd /c openclaw channels login whatsapp
  ```
  *(Sau đó quét mã QR trên điện thoại).*

- **Xem danh sách các kênh khác:**
  ```cmd
  cmd /c openclaw channels --help
  ```

---
*Lưu ý: Nếu bị lỗi bảo mật PowerShell, hãy luôn dùng tiền tố `cmd /c` trước lệnh `openclaw`.*
