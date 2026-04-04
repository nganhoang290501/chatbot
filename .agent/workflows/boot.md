---
description: Khởi động hệ thống (CLIProxy + OpenClaw) để Telegram hoạt động
---

Dành cho Chị Ngân: Nhấn lệnh này để bật toàn bộ "đầu não" và kênh liên lạc Telegram mà không cần đụng đến code.

// turbo-all
1. **Kiểm tra trạng thái xác thực (Auth Check)**:
   - Nịi sẽ kiểm tra thư mục `C:\Users\Admin\.cli-proxy-api`.
   - **Nếu không tìm thấy tệp .json (ví dụ: nganhoang.290501@gmail.com.json)**: Chị hãy thực hiện ngay các bước sau để đăng nhập:
     1. Mở cửa sổ Terminal (PowerShell).
     2. Copy và chạy lệnh: `& "C:\Users\Admin\AppData\Local\Microsoft\WinGet\Packages\LuisPater.CLIProxyAPI_Microsoft.Winget.Source_8wekyb3d8bbwe\cli-proxy-api.exe" -tui`
     3. Nhập mật khẩu: **`admin`**
     4. Chọn **[Login Google Account]** để đăng nhập Gemini (hoặc Claude nếu muốn).
     5. Sau khi đăng nhập xong, hãy quay lại đây gọi `/boot` một lần nữa nhé!

2. **Khởi động CLIProxy (Đầu não AI)**:
   - Nếu đã có Auth, Nịi sẽ chạy tệp tin thực thi CLIProxy theo đường dẫn hệ thống.
   ```powershell
   & "C:\Users\Admin\AppData\Local\Microsoft\WinGet\Packages\LuisPater.CLIProxyAPI_Microsoft.Winget.Source_8wekyb3d8bbwe\cli-proxy-api.exe"
   ```
   *(Lệnh này sẽ chạy ngầm để làm cầu nối cho AI)*.

3. **Khởi động OpenClaw (Kết nối Telegram)**:
   - Sau khi CLIProxy ổn định, Nịi sẽ kích thực hiện OpenClaw.
   ```cmd
   cmd /c openclaw tui
   ```
   *(Lưu ý: OpenClaw đã được cấu hình mặc định để gọi qua CLIProxy, không dùng trực tiếp token của Antigravity để bảo mật)*.

4. **Khởi động Gateway (Cầu nối liên lạc)**:
   - Đảm bảo gateway của OpenClaw được làm mới và không bị chiếm dụng cổng.
   ```cmd
   cmd /c openclaw gateway --force
   ```
   *(Bước này giúp các ứng dụng khác có thể kết nối ổn định với OpenClaw)*.

5. **Kiểm tra kết nối & Telegram**:
   - Xác nhận trạng thái Telegram thông qua cấu hình `.openclaw/openclaw.json`.
   - Nếu không phản hồi, chị có thể chạy lệnh `cmd /c openclaw channels login telegram`.

6. **Hoàn tất & Chào mừng**:
   - Thông báo cho chị Ngân: "Hệ thống đã sẵn sàng! Chúc chị Ngân có một buổi tối làm việc và học tập hiệu quả cùng Niji nhé! 🌸"

---
*Lưu ý cho Chị Ngân: Đây là quy trình an toàn, đảm bảo mọi dữ liệu đều đi qua kênh bảo mật CLIProxy mà không lộ thông tin cá nhân.*
