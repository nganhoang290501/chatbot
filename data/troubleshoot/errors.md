# Nhật ký Sửa lỗi & Troubleshooting

Ghi chép các lỗi đã gặp và cách khắc phục trong dự án Chatbot.

## 1. Hệ thống & PowerShell
- **Lỗi Execution Policy:** PowerShell chặn script.
  - *Fix:* Luôn sử dụng tiền tố `cmd /c` trước các lệnh `openclaw` (ví dụ: `cmd /c openclaw tui`).
- **Lỗi CLIProxy Login/Mkdir:** CLIProxy khó sử dụng và cấu hình trên Windows.
  - *Fix:* Gỡ bỏ CLIProxy và thay thế bằng **9Router** (Port 20128). Cập nhật toàn bộ endpoint trong `openclaw.json`.

## 2. API & Kết nối
- **Lỗi Gateway Auth Token:** Yêu cầu mật khẩu tại cổng 18789.
  - *Fix:* Thay đổi `gateway.auth.mode: "none"` trong cấu hình.
- **Migration CLIProxy -> 9Router (11/04/2026):** Toàn bộ hệ thống hiện đã chuyển sang 9Router. Nếu gặp lỗi kết nối, hãy kiểm tra xem lệnh `9router` đã chạy chưa.

## 3. Kênh liên lạc (Channels)
- **Lỗi Telegram Pairing:** Không trả lời người lạ.
  - *Fix:* Dùng lệnh `openclaw pairing approve telegram [MÃ_SỐ]` để cấp quyền.
