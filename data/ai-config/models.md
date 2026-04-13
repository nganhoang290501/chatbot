# Danh sách Model & Cấu hình AI

Dựa trên cấu hình `openclaw.json` và `installation_notes.md`.

## 1. Thành phần hệ thống
*   **OpenClaw AI:** Bộ não xử lý lệnh (Node.js).
*   **9Router:** Máy chủ trung gian kết nối Gemini/Claude (Port 20128).
*   **AI Model:** Mặc định sử dụng **Gemini 3 Flash** (via 9Router).

## 2. Cấu hình Model ưu tiên
1. **Gemini 3 Flash** (id: `gemini-3-flash`) - Mặc định, Mạnh, nhanh.
2. **Gemini 3 Pro** (id: `gemini-3-pro-high`) - Xử lý ngữ cảnh lớn (2M).
3. **Claude Opus Thinking** (id: `claude-opus-4-6-thinking`) - Phân tích chuyên sâu.

## 3. Địa chỉ kết nối
*   **Endpoint:** `http://127.0.0.1:20128/v1`
*   **Model ID Format:** `9router/[model-id]`
