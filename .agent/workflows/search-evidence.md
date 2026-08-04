---
description: Tìm kiếm chứng cứ chính thống (Logistics, Doanh nghiệp Nhật, Data Research, Content)
---

# /search-evidence - Quy trình Tìm kiếm Chứng cứ Chính thống

$ARGUMENTS

Nịi sẽ thực hiện quy trình 5 bước tra cứu chứng cứ chính thống theo tiêu chuẩn của Chị Ngân:

---

## 🟢 BƯỚC 1: Xác định Lĩnh vực & Nguồn Chính thống (Source Identification)
Dựa vào yêu cầu tra cứu của Chị Ngân, định vị đúng trang tài liệu gốc:
- **Logistics & Chuỗi cung ứng**: `moit.gov.vn`, `customs.gov.vn`, `jetro.go.jp`, `mlit.go.jp`, `iata.org`, `wcoomd.org`.
- **Tiếng Nhật & Doanh nghiệp Nhật**: `mhlw.go.jp`, `meti.go.jp`, `keidanren.or.jp`, `e-stat.go.jp`, `jlpt.jp`, `jpf.go.jp`.
- **Data Research & Thị trường**: `gso.gov.vn`, `sbv.gov.vn`, `worldbank.org`, `oecd.org`.
- **Content & AI Image Prompting**: Google Search Central, MDN, Midjourney Docs.

---

## 🟡 BƯỚC 2: Tìm kiếm Nâng cao (Advanced Search)
- Sử dụng `search_web` với câu lệnh `site:[domain_chinh_thong] [tu_khoa_chi_tiet]`.
- Phân tích và đọc kỹ nội dung từ các bài viết chi tiết được trả về.

---

## 🔵 BƯỚC 3: Xác thực Link & Trích xuất Nguyên văn (Strict Link & Evidence Validation)
1. **Dùng `read_url_content` để test link trước khi xuất ra**:
   - Nếu trả về 404, soft redirect (<400 ký tự hay JS redirect) -> Đổi link khác hoặc tìm URL gốc.
   - Loại bỏ các tham số tracking query (`?utm_source=...`, `?track=...`).
2. **Yêu cầu về Link & Khối chứng cứ**:
   - Must be **Deep Link** đến bài viết/tài liệu chi tiết (không dùng link trang chủ).
   - Must be **Visible Body Content** (nội dung hiển thị trên UI).
   - Must be **Exact Substring 100%** (không paraphrase, không thay đổi từ ngữ).

---

## 🔴 BƯỚC 4: Trình bày Kết quả cho Chị Ngân
Cấu trúc câu trả lời:
1. **Tóm tắt / Diễn giải bằng Tiếng Việt**: Ngắn gọn, súc tích và áp dụng trực tiếp cho bối cảnh công việc của Chị Ngân.
2. **Khối Chứng cứ Nguyên văn**:
   > [!NOTE]
   > **Evidence from [Tên Nguồn Chính Thống]:**
   > *"Đoạn văn bản trích dẫn chính xác nguyên văn 100%..."*
   > 👉 Source: [Tiêu đề tài liệu chi tiết](https://exact.official.domain/deep-link-path)

---

## 🔄 BƯỚC 5: Tự Cải tiến khi có phản hồi
Nếu Chị Ngân thông báo link bị lỗi hoặc trích dẫn chưa đúng context, Nịi dừng ngay để re-fetch, kiểm tra chéo và tự động cập nhật lại tệp [`data/troly/SEARCH_EVIDENCE.md`](file:///c:/Users/Admin/OneDrive/M%C3%A1y%20t%C3%ADnh/Chatbot/data/troly/SEARCH_EVIDENCE.md) để tránh tái diễn.
