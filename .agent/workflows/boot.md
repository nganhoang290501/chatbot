---
description: Khởi động hệ thống (CLIProxy + OpenClaw) để Telegram hoạt động
---

Dành cho Chị Ngân: Nhấn lệnh này để bật toàn bộ "đầu não" và kênh liên lạc Telegram mà không cần đụng đến code.

// turbo-all
1. **Khởi động 9Router (Proxy AI)**:
   - Nịi sẽ khởi động `9router` để làm cầu nối cho OpenAI/Gemini/Claude.
   ```powershell
   cmd /c start /b 9router
   ```
   *(Lệnh này sẽ chạy ngầm tại cổng 20128)*.

2. **Cách truy cập Dashboard 9Router**:
   - Chị có thể mở trình duyệt và truy cập: `http://localhost:20128/dashboard`
   - Tại đây chị có thể quản lý các Provider và xem lịch sử chat.

3. **Khởi động Gateway & OpenClaw**:
   - Để đảm bảo kết nối ổn định, Nịi sẽ kích hoạt Gateway trước:
   ```cmd
   cmd /c openclaw gateway --force
   ```
   - Sau đó mở giao diện OpenClaw:
   ```cmd
   cmd /c openclaw tui
   ```

4. **Kiểm tra kết nối & Telegram**:
   - Xác nhận trạng thái Telegram qua `.openclaw/openclaw.json`.
   - Nếu không phản hồi, chị có thể chạy lệnh `cmd /c openclaw channels login telegram`.

5. **Hoàn tất & Chào mừng**:
   - Thông báo cho chị Ngân: "Hệ thống đã sẵn sàng! Chúc chị Ngân có một buổi tối làm việc và học tập hiệu quả cùng Niji nhé! 🌸"

---
*Lưu ý cho Chị Ngân: Hệ thống hiện đã chuyển sang dùng 9Router để ổn định và tiết kiệm hơn. Chị không cần lo lắng về việc đăng nhập CLIProxy như trước nữa.*
