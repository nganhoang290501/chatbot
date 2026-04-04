---
description: Hướng dẫn các bước thêm profile Antigravity mới cho CLIProxy
---

Dưới đây là các bước để chị có thể thêm một profile Antigravity mới vào hệ thống CLIProxy một cách nhanh chóng.

1. **Khởi động trình cài đặt hồ sơ (Login Start)**:
   - Chị hãy mở terminal (PowerShell) và chạy lệnh sau:
   ```powershell
   & "C:\Users\Admin\AppData\Local\Microsoft\WinGet\Packages\LuisPater.CLIProxyAPI_Microsoft.Winget.Source_8wekyb3d8bbwe\cli-proxy-api.exe" -antigravity-login
   ```
   *(Lệnh này sẽ tự động mở trình duyệt để chị đăng nhập vào tài khoản Antigravity)*.

2. **Xác thực trên trình duyệt**:
   - Sau khi chạy lệnh trên, một trang web sẽ hiện ra.
   - Chị hãy đăng nhập bằng tài khoản Google/Antigravity mà chị muốn thêm.
   - Nhấn **Cho phép** (Allow) nếu có yêu cầu cấp quyền.

3. **Kiểm tra kết quả**:
   - Sau khi đăng nhập thành công, terminal sẽ hiện thông báo đại loại như `Login successful` và một tệp `.json` mới sẽ được tạo trong thư mục `C:\Users\Admin\.cli-proxy-api`.
   - Để kiểm tra chị có thể dùng lệnh:
   ```powershell
   ls "C:\Users\Admin\.cli-proxy-api"
   ```

4. **Khởi động lại (Tùy chọn)**:
   - Nếu CLIProxy đang chạy, nó sẽ tự động nhận diện hồ sơ mới trong vòng 15 phút.
   - Nếu muốn dùng ngay, chị hãy gọi lại lệnh `/boot` để Niji giúp chị khởi động lại toàn bộ nhé! 🌸

---
*Lưu ý: Luôn đảm bảo chị dùng đúng tài khoản email mà chị muốn kết nối với chatbot.*
