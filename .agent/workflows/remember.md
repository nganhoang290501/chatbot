---
description: Ghi nhớ thông tin quan trọng vào hệ thống dữ liệu (data/)
---

Khi người dùng muốn ghi nhớ kiến thức, lỗi mới, hoặc cập nhật cấu hình, hãy làm theo quy trình sau:

// turbo-all
1. **Nhận diện & Phân loại**: Phân tích nội dung người dùng cung cấp và tự động xác định "ngữ cảnh" (Context) để lưu vào thư mục tương ứng trong `data/`:
    - **`N1/`**: Nếu liên quan đến học tiếng Nhật N1 (từ vựng, ngữ pháp, tiến độ, bài tập).
    - **`work/`**: Nếu liên quan đến công ty, dự án chuyên môn, task văn phòng.
        - *Sub-folder*: Tạo thêm theo tên công ty hoặc dự án nếu cần (ví dụ: `work/company-A/`).
    - **`teaching/`**: Nếu liên quan đến nội dung giảng dạy, giáo án, tài liệu sư phạm.
    - **`troubleshoot/`**: Nếu liên quan đến lỗi hệ thống, cách khắc phục, ghi chép kỹ thuật.
    - **`ai-config/`**: Nếu liên quan đến cấu hình AI, Prompt, API Secrets.
    - **`daily-logs/`**: Những ghi chú nhanh, nhật ký sinh hoạt không thuộc các nhóm trên.
    - **`projects/`**: Nếu liên quan đến các dự án cá nhân hoặc sở thích khác.

2. **Quy trình lưu trữ**:
    - **Bước 1**: Kiểm tra thư mục mục tiêu. Nếu chưa có, hãy **tự động tạo mới**.
    - **Bước 2**: Xác định file đích (`index.md`, `tasks.md`, hoặc một tên file gợi nhớ theo nội dung).
    - **Bước 3**: Nếu file đã tồn tại, hãy **append** (thêm vào cuối) với header `### [YYYY-MM-DD HH:MM]`.
    - **Bước 4**: Nếu là kiến thức mới hoàn toàn, hãy tạo file `.md` mới với cấu trúc rõ ràng.

3. **Báo cáo**: Xác nhận vị trí lưu trữ cụ thể cho người dùng (đường dẫn tuyệt đối hoặc tương đối).

---
**Ví dụ thực tế:**
- *Người dùng*: "Ghi nhớ giúp tôi lịch dạy lớp tối nay là 19h bài 4." -> Lưu vào `data/teaching/schedule.md`.
- *Người dùng*: "Lưu lại cách fix lỗi mất kết nối MySQL trên Windows." -> Lưu vào `data/troubleshoot/database.md`.
- *Người dùng*: "Từ vựng N1 mới: 謙虚 (Kenkyo) là khiêm tốn." -> Lưu vào `data/N1/vocabulary.md`.
- *Người dùng*: "Note lại dự án web shop cho công ty X bắt đầu tuần sau." -> Lưu vào `data/work/company-x/index.md`.
