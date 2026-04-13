# Hướng dẫn lệnh khởi động OpenClaw & CLIProxy

Để chạy hệ thống này sau khi đã cài đặt xong, bạn hãy thực hiện theo thứ tự sau:

## 1. Khởi động Máy chủ 9Router
Mở một cửa sổ Terminal tại thư mục `Chatbot` và chạy:
```powershell
9router
```
*(Giữ cửa sổ này luôn mở để làm cầu nối API. Truy cập http://localhost:20128/dashboard để cấu hình).*

## 2. Quản lý Đăng nhập AI
9Router không yêu cầu lệnh login phức tạp như CLIProxy. Chị chỉ cần:
1. Mở Dashboard: `http://localhost:20128/dashboard`
2. Vào mục **Providers**, chọn Gemini hoặc Claude và dán API Key của chị vào.

## 3. Khởi động Giao diện OpenClaw
Mở một Terminal khác và chạy:
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
