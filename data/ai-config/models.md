# Danh sách Model & Cấu hình AI

Dựa trên cấu hình `openclaw.json` và `installation_notes.md`.

## 1. Thành phần hệ thống
*   **OpenClaw AI:** Bộ não xử lý lệnh (Node.js).
*   **CLIProxyAPI:** Máy chủ trung gian kết kết nối Gemini/Claude (Port 8317).
*   **AI Model:** Mặc định sử dụng **Gemini 2.0 Flash** (Alias: `Gemini 3 Flash`).

## 2. Cấu hình Model ưu tiên
1. **Gemini 3 Flash** (id: `gemini-3-flash`) - Mặc định, Mạnh, nhanh.
2. **Gemini 3 Pro** (id: `gemini-3-pro`) - Xử lý ngữ cảnh lớn (2M).
3. **Claude 3 Opus** (id: `claude-3-opus-20240229`) - Phân tích chuyên sâu.

## 3. Địa chỉ kết nối
*   **Endpoint:** `http://127.0.0.1:8317/v1`
*   **Model ID Format:** `cliproxy/[model-id]`
