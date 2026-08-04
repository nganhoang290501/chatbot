# 🔍 SEARCH_EVIDENCE.md - Quy trình Tìm kiếm Chứng cứ Chính thống

**Mục tiêu**: Đảm bảo mọi câu trả lời về Logistics, Nghiên cứu Doanh nghiệp Nhật, Tiếng Nhật, Data Research hay Content luôn được đối soát và trích dẫn trực tiếp từ các nguồn tài liệu chính thống của nhà cung cấp dịch vụ/cơ quan chính phủ, tránh thông tin sai lệch hay suy diễn.

---

## 🎯 **Bước 1: Định vị Nguồn Chính thống (Source Identification)**

Khi Chị Ngân yêu cầu tìm kiếm thông tin hoặc chứng cứ, hãy phân loại và ưu tiên các domain gốc:

1. **Logistics & Chuỗi cung ứng (Việt - Nhật & Quốc tế)**:
   - Việt Nam: `moit.gov.vn` (Bộ Công Thương), `customs.gov.vn` (Tổng cục Hải quan), `gso.gov.vn`.
   - Nhật Bản: `mlit.go.jp` (Bộ Giao thông Đất đai Cơ sở hạ tầng Nhật), `jetro.go.jp` (Tổ chức Xúc tiến Thương mại Nhật Bản).
   - Quốc tế: IATA (`iata.org`), WCO (`wcoomd.org`), FIATA (`fiata.org`).

2. **Tiếng Nhật, Thực tập & Nghiên cứu Doanh nghiệp Nhật (Japanese Business & Culture)**:
   - Cơ quan Chính phủ Nhật: `mhlw.go.jp` (Bộ Lao động - Y tế - Phúc lợi), `meti.go.jp` (Bộ Kinh tế, Thương mại và Công nghiệp), `mofa.go.jp` (Bộ Ngoại giao).
   - Tổ chức kinh tế: Keidanren (`keidanren.or.jp`), JETRO (`jetro.go.jp`).
   - Học thuật & Từ vựng Tiếng Nhật: Japan Foundation (`jpf.go.jp`), JLPT (`jlpt.jp`), E-Stat Nhật Bản (`e-stat.go.jp`).

3. **Data Research & Thị trường**:
   - Dữ liệu Việt Nam: `gso.gov.vn` (Tổng cục Thống kê), `sbv.gov.vn` (Ngân hàng Nhà nước).
   - Dữ liệu Toàn cầu: World Bank (`worldbank.org`), OECD (`oecd.org`), IMF (`imf.org`).

4. **Sáng tạo Content & AI Image Prompting**:
   - Tài liệu kỹ thuật SEO & Marketing: Google Search Central (`developers.google.com/search`), MDN (`developer.mozilla.org`).
   - AI Image Guidelines: Official Prompting Guides từ Midjourney, Stability AI.

---

## 🔍 **Bước 2: Tìm kiếm Nâng cao (Advanced Search)**

- Sử dụng `search_web` với từ khóa chi tiết kết hợp giới hạn domain (Ví dụ: `site:jetro.go.jp logistics japan vietnam` hoặc `site:mhlw.go.jp internship regulations`).
- Đọc kỹ nội dung từ các kết quả trả về trước khi kết luận.

---

## 🛡️ **Bước 3: Trích xuất Chứng cứ & Quy tắc Kiểm tra Link Strict (CRITICAL)**

### 1. Kiểm tra tính khả dụng của Link (Link & Redirect Validation - MANDATORY)
- **Xác thực tự động**: Trước khi gửi link cho Chị Ngân, Nịi **bắt buộc** phải dùng `read_url_content` kiểm tra xem URL đó có trả về nội dung hợp lệ hay không. Tuyệt đối không đoán URL hay gửi link 404.
- **Phát hiện Soft Redirect**: Nếu nội dung fetch về dưới 400 ký tự hoặc chứa mã redirect JS/Meta refresh (`<meta http-equiv="refresh"...>`), phải tìm URL đích thực sự để kiểm tra lại từ đầu.
- **Xử lý bị chặn (403/Cloudflare)**: Nếu link bị chặn bot, ưu tiên dùng nguồn mở chính thống thay thế. Nếu buộc phải dùng, ghi chú rõ cho Chị Ngân và đối soát kỹ qua Google Search Snippets.
- **Chuẩn hóa Canonical URL**: Làm sạch link bằng cách xóa bỏ tất cả tham số tracking không cần thiết (`?utm_source=...`, `?track=...`, `?sc_channel=...`).

### 2. Định dạng Link & Nội dung hiển thị (Deep Link & Visible Body Content)
- Link chứng cứ **bắt buộc là Deep Link** đến bài viết/văn bản chi tiết, không dùng link trang chủ chung chung (`https://jetro.go.jp` là KHÔNG ĐẠT).
- Đoạn trích dẫn **phải nằm ở phần nội dung hiển thị (Visible Body Content)** người dùng đọc được ngay khi mở link, không trích từ thẻ ẩn `<meta>` hay mã script.
- **Nguyên văn 100% (Exact Substring)**: Không tự ý diễn dịch lại (paraphrase), không thay đổi từ ngữ từ văn bản gốc trong khối chứng cứ.

### 3. Cấu trúc Khối Chứng cứ Chuẩn:
```markdown
> [!NOTE]
> **Evidence from [Tên Nguồn Chính Thống]:**
> *"Exact substring directly copied from the official body content..."*
> 👉 Source: [Tiêu đề nguồn rõ ràng](https://exact.official.domain/deep-link-path)
```

---

## 🔄 **Bước 4: Tự Cải tiến Quy trình (Self-Improvement)**

Nếu Chị Ngân phản hồi thông tin trích xuất chưa chính xác hoặc link lỗi:
1. Dừng ngay lập tức, truy cập và kiểm tra lại link nguồn.
2. Kiểm tra chéo (double-check) trực tiếp nội dung văn bản gốc.
3. Rà soát kẽ hở và cập nhật trực tiếp vào file này (`SEARCH_EVIDENCE.md`).
