# Sử dụng image Python
FROM python:3.9-slim

# Cài đặt Sphinx và Sphinx-autobuild
RUN pip install sphinx sphinx-autobuild sphinx_rtd_theme

# Thiết lập thư mục làm việc
WORKDIR /docs

# Mở cổng 8000 cho server
EXPOSE 8000

# Lệnh để chạy server xem trước
CMD ["sphinx-autobuild", ".", "_build/html", "--host", "0.0.0.0", "--port", "8000"]
