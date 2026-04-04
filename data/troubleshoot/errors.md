# Nhật ký Sửa lỗi & Troubleshooting

Ghi chép các lỗi đã gặp và cách khắc phục trong dự án Chatbot.

## 1. Hệ thống & PowerShell
- **Lỗi Execution Policy:** PowerShell chặn script.
  - *Fix:* Luôn sử dụng tiền tố `cmd /c` trước các lệnh `openclaw` (ví dụ: `cmd /c openclaw tui`).
- **Lỗi CLIProxy Mkdir:** Không tự tạo được thư mục config trên Windows.
  - *Fix:* Tạo thư mục `C:\Users\Admin\.cli-proxy-api` thủ công và trỏ đường dẫn tuyệt đối trong `config.yaml`.

## 2. API & Kết nối
- **Lỗi Gateway Auth Token:** Yêu cầu mật khẩu tại cổng 18789.
  - *Fix:* Thay đổi `gateway.auth.mode: "none"` trong cấu hình.

## 3. Kênh liên lạc (Channels)
- **Lỗi Telegram Pairing:** Không trả lời người lạ.
  - *Fix:* Dùng lệnh `openclaw pairing approve telegram [MÃ_SỐ]` để cấp quyền.
