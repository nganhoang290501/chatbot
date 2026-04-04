# Nhật ký Cài đặt & Sửa lỗi OpenClaw AI (Zalo/Telegram)

Tài liệu này ghi lại toàn bộ quá trình thiết lập hệ thống AI của bạn để bạn có thể tra cứu sau này.

## 1. Thành phần hệ thống
*   **OpenClaw AI:** Giao diện và bộ não xử lý lệnh (Node.js).
*   **CLIProxyAPI:** Máy chủ trung gian giúp OpenClaw kết nối với Gemini/Claude mà không bị chặn.
*   **AI Model:** Mặc định sử dụng **Gemini 2.0 Flash** (Alias: `Gemini 3 Flash`).

## 2. Các lỗi đã sửa (Troubleshooting)
*   **Lỗi PowerShell Execution Policy:** Windows chặn chạy script PowerShell. 
    *   *Fix:* Luôn dùng tiền tố `cmd /c` trước các lệnh `openclaw`.
*   **Lỗi CLIProxy Mkdir:** CLIProxy không tự tạo được thư mục lưu trữ login trên Windows.
    *   *Fix:* Tạo thủ công thư mục `C:\Users\Admin\.cli-proxy-api` và trỏ đường dẫn tuyệt đối trong `config.yaml`.
*   **Lỗi Gateway Auth Token:** OpenClaw yêu cầu mật khẩu bảo vệ khi truy cập Gateway.
    *   *Fix:* Thiết lập `gateway.auth.mode: "none"` trong `openclaw.json` để sử dụng nội bộ không cần mật khẩu.
*   **Lỗi Telegram Pairing:** Bot không trả lời tin nhắn từ người lạ.
    *   *Fix:* Phải dùng lệnh `openclaw pairing approve telegram [MÃ_SỐ]` để cho phép người dùng nhắn tin với Bot.

## 3. Cấu hình Model ưu tiên
*   Ưu tiên 1: **Gemini 3 Flash** (Mạnh, nhanh, tiết kiệm).
*   Ưu tiên 2: **Gemini 1.5 Pro**.
*   Ưu tiên 3: **Claude 3 Opus**.

## 4. Cách sử dụng hàng ngày
1.  **Khởi động:** Nhấp đúp vào file `🚀 OPEN_MY_AI.bat` trên Desktop.
2.  **Đăng nhập AI:** Nếu AI báo lỗi chưa đăng nhập, nhấp đúp file `LOGIN_AI.bat` trong thư mục Chatbot để thực hiện login lại (Google/Claude).
3.  **Chat:** Nhắn trực tiếp vào Bot Telegram `@nganlaptop_bot` hoặc quét mã QR Zalo.

---
*Ngày hoàn thành: 28/03/2026*
