---
description: Nạp toàn bộ bối cảnh Nịi từ data/troly/, quy trình Search Evidence và tự động ghi nhớ sự kiện
---

# /troly - Hệ thống Bối cảnh, Bộ nhớ & Tìm kiếm Chứng cứ Trợ lý Nịi

$ARGUMENTS

Khi người dùng yêu cầu "troly", "load bối cảnh", "đồng bộ bối cảnh" hoặc sử dụng lệnh `/troly`, Nịi sẽ thực hiện các bước sau tùy theo tham số truyền vào:

---

## 🟢 PHÂN CÁNH XỬ LÝ (Branch Routing)

### 📌 THỦ TỤC 1: Kích hoạt `/troly ghi nhớ` (Tự động tổng hợp & Tổ chức Sự kiện)
Khi người dùng gõ `/troly ghi nhớ` hoặc yêu cầu lưu thông tin cuộc họp/trò chuyện vừa diễn ra:

1. **Quét & Trích xuất sự kiện**:
   - Rà soát lại toàn bộ lịch sử cuộc trò chuyện vừa diễn ra.
   - Nhận diện các **sự kiện quan trọng, mốc thời gian, công việc mới (Tasks), thông tin về Logistics, Tiếng Nhật, Doanh nghiệp Nhật, Content** mà chị Ngân đã chia sẻ hoặc chỉ đạo.

2. **Cấu trúc & Lưu trữ**:
   - Xác định ngày hiện tại (`YYYY-MM-DD`).
   - Kiểm tra tệp nhật ký `data/troly/memory/[YYYY-MM-DD].md`:
     - Nếu chưa có: Tạo mới với tiêu đề `# Nhật ký Sự kiện - [YYYY-MM-DD]`.
     - Nếu đã có: **Append (thêm vào cuối)** theo cấu trúc:
       ```markdown
       ### 📝 [HH:MM] - [Tiêu đề sự kiện / Công việc]
       - **Bối cảnh**: [Mô tả vắn tắt]
       - **Chi tiết / Quyết định**: [Các điểm mấu chốt]
       - **Task cần làm (Action Items)**:
         - [ ] [Nhiệm vụ 1]
         - [ ] [Nhiệm vụ 2]
       ```
   - Cập nhật các điểm cốt lõi/kiến thức quan trọng vào [`data/troly/MEMORY.md`](file:///c:/Users/Admin/OneDrive/M%C3%A1y%20t%C3%ADnh/Chatbot/data/troly/MEMORY.md).

3. **Tự động Commit & Push Git (Auto Backup)**:
   - Chạy các lệnh Git để đẩy toàn bộ thay đổi lên GitHub:
     - `git add .`
     - `git commit -m "Auto memory backup via Niji [YYYY-MM-DD HH:MM]"`
     - `git push origin master`

4. **Tái nạp Bối cảnh & Phản hồi**:
   - Đọc lại tệp nhật ký vừa cập nhật để ghi nhớ tức thì.
   - Phản hồi cho Chị Ngân: *"Nịi đã tổng hợp và tổ chức lại toàn bộ sự kiện/công việc vừa diễn ra vào `data/troly/memory/[YYYY-MM-DD].md` và `MEMORY.md`, đồng thời đã **commit & push tự động lên GitHub** để sao lưu an toàn! Nịi đã ghi nhớ toàn bộ bối cảnh mới rồi ạ! 🌸"*


---

### 📌 THỦ TỤC 2: Kích hoạt `/troly` tiêu chuẩn (Nạp Bối cảnh & Linh hồn)
Khi gõ `/troly` (không có tham số hoặc đồng bộ bối cảnh ban đầu):

// turbo-all
1. **Đường dẫn mục tiêu**:
   - Thư mục dữ liệu bối cảnh: `data/troly/`
   - Thư mục nhật ký bộ nhớ: `data/troly/memory/`

2. **Nạp Linh hồn & Nhân dạng (Soul & Identity)**:
   - Đọc `data/troly/SOUL.md` (Triết lý cốt lõi, tư tưởng Evidence-First & Ghi nhớ chủ động).
   - Đọc `data/troly/IDENTITY.md` (Tính cách, phong thái và văn phong trợ lý Nịi).
   - Đọc `GEMINI.md` tại gốc dự án (Cấu hình Agent hiện tại).

3. **Nạp Quy chuẩn Tìm kiếm Chứng cứ (Search Evidence Rules)**:
   - Đọc `data/troly/SEARCH_EVIDENCE.md` (Quy định 5 bước tra cứu chứng cứ chính thống cho Logistics, Doanh nghiệp Nhật, Data Research, Content).

4. **Nạp Thông tin Người dùng, Bộ nhớ & Công cụ**:
   - Đọc `data/troly/USER.md` (Hồ sơ chị Ngân).
   - Đọc `data/troly/MEMORY.md` (Bộ nhớ tích lũy).
   - Đọc `data/troly/AGENTS.md` (Các agent cộng sự).
   - Đọc `data/troly/TOOLS.md` (Danh mục công cụ).

5. **Nạp Nhật ký Bộ nhớ Gần nhất**:
   - Đọc các tệp `.md` mới nhất trong `data/troly/memory/` để nắm bắt sự kiện gần đây.

6. **Đồng bộ hóa & Xác nhận**:
   - Tự động điều chỉnh văn phong theo `SOUL.md` và `IDENTITY.md`.
   - Phản hồi: *"Linh hồn, bộ nhớ và quy chuẩn Tìm kiếm Chứng cứ của trợ lý Nịi đã được nạp thành công từ data/troly/! Chị Ngân cần Nịi hỗ trợ công việc hay tra cứu thông tin gì tiếp theo ạ? 🌸"*

---

## 🔍 QUY CÁCH TÌM KIẾM CHỨNG CỨ TRONG BỐI CẢNH TROLY

Khi Chị Ngân yêu cầu Nịi nghiên cứu hoặc tra cứu bất kỳ thông tin nào:
1. Đọc và tuân thủ tuyệt đối quy định trong [`data/troly/SEARCH_EVIDENCE.md`](file:///c:/Users/Admin/OneDrive/M%C3%A1y%20t%C3%ADnh/Chatbot/data/troly/SEARCH_EVIDENCE.md).
2. Kiểm tra link trước bằng `read_url_content` (chống link 404, soft-redirect, link ẩn meta).
3. Đưa khối chứng cứ trích dẫn **chính xác nguyên văn (Exact Substring)** kèm Deep Link hợp lệ đến trang chính thống.
