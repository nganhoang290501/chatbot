# Tiến độ cài đặt OpenClaw AI & CLIProxyAPI

## Trạng thái hiện tại: Đã cài đặt xong phần mềm, chờ cấu hình API (Tạm nghỉ đến mai)

### Những bước đã hoàn thành hôm nay:
1. **Kiểm tra và thử nghiệm WSL:** Tuy hệ thống đã bật Virtualization nhưng quá trình cài đặt WSL2 (Ubuntu) gặp lỗi `HCS_E_CONNECTION_TIMEOUT`. 
2. **Chuyển sang cài đặt Native Windows:** Đã quyết định cài đặt trực tiếp trên Windows (Native) thay vì WSL2.
3. **Cài đặt Git:** Đã bổ sung công cụ Git (thông qua Winget) do OpenClaw uỷ quyền yêu cầu.
4. **Cài đặt OpenClaw AI:** Đã cài đặt thành công OpenClaw thông qua `npm install -g openclaw` bằng NodeJS v24 có sẵn.
5. **Cài đặt CLIProxyAPI:** Đã cài đặt thành công CLIProxyAPI (phiên bản 6.8.55) qua Winget. Công cụ đã có sẵn lệnh `cli-proxy-api` trong Terminal.

### Kế hoạch tiếp theo (Cho ngày mai):
1. **Khởi động và đăng nhập CLIProxyAPI:**
   - Mở cửa sổ Terminal (PowerShell/CMD).
   - Chạy lệnh: `cli-proxy-api -tui`
   - Đăng nhập vào các nền tảng AI (Claude/Gemini/OpenAI) và lấy địa chỉ Local Proxy (thường là `http://127.0.0.1:8080/v1`) cùng với API Key cá nhân.
   
2. **Cấu hình OpenClaw sử dụng Proxy mới:**
   - Mở cửa sổ Terminal mới.
   - Chạy lệnh: `openclaw setup --wizard`
   - Chọn nhà cung cấp AI tương ứng, sau đó thiết lập **Custom Endpoint/Base URL** trỏ về địa chỉ Local Proxy vừa lấy được.
   - Điền API Key do CLIProxyAPI cung cấp.

Chúc bạn nghỉ ngơi thật tốt, ngày mai cứ việc mở lại file này và gọi tôi, tôi sẽ hướng dẫn bạn hoàn tất các bước cuối cùng nhé!
