# Nhật ký Cài đặt & Sửa lỗi OpenClaw AI (Zalo/Telegram)

Tài liệu này ghi lại toàn bộ quá trình thiết lập hệ thống AI của bạn để bạn có thể tra cứu sau này.

## 1. Thành phần hệ thống
*   **OpenClaw AI:** Giao diện và bộ não xử lý lệnh (Node.js).
*   **9Router:** Máy chủ proxy trung gian kết nối với Gemini/Claude/OpenAI (Port 20128).
*   **AI Model:** Mặc định sử dụng **Gemini 3 Flash** (via 9Router).

## 2. Các lỗi đã sửa (Troubleshooting)
*   **Lỗi PowerShell Execution Policy:** Windows chặn chạy script PowerShell. 
    *   *Fix:* Luôn dùng tiền tố `cmd /c` trước các lệnh `openclaw` hoặc `npm`.
*   **Chuyển đổi từ CLIProxy sang 9Router:** CLIProxy đã bị gỡ bỏ để thay thế bằng 9Router ổn định hơn.
*   **Lỗi Gateway Auth Token:** OpenClaw yêu cầu mật khẩu bảo vệ khi truy cập Gateway.
    *   *Fix:* Thiết lập `gateway.auth.mode: "none"` trong `openclaw.json`.
*   **Lỗi Telegram Pairing:** Bot không trả lời tin nhắn từ người lạ.
    *   *Fix:* Phải dùng lệnh `openclaw pairing approve telegram [MÃ_SỐ]` để cho phép người dùng nhắn tin với Bot.

## 3. Cấu hình Model ưu tiên
*   Ưu tiên 1: **Gemini 3 Flash** (Mạnh, nhanh, tiết kiệm).
*   Ưu tiên 2: **Gemini 3 Pro High**.
*   Ưu tiên 3: **Claude Opus Thinking**.

## 4. Cách sử dụng hàng ngày
1.  **Khởi động:** Nhấp đúp vào file `🚀 OPEN_MY_AI.bat` trên Desktop.
2.  **Quản lý AI:** Truy cập `http://localhost:20128/dashboard` để quản lý các Provider và xem lịch sử chat.
3.  **Chat:** Nhắn trực tiếp vào Bot Telegram `@nganlaptop_bot`.

---
*Ngày hoàn thành: 11/04/2026 (Nâng cấp lên 9Router)*
