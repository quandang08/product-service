-- Dữ liệu mẫu cho bảng category
INSERT INTO public.category (id, name, description)
VALUES
    (1, 'Electronics', 'Devices and electronic accessories'),
    (2, 'Monitors', 'Display devices for computers'),
    (3, 'Accessories', 'Computer and mobile accessories'),
    (4, 'Keyboard', 'Mechanical and membrane keyboards');

-- Dữ liệu mẫu cho bảng product
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (1, 100, 'High-quality wireless mouse', 'Wireless Mouse', 25.99, 1),
    (2, 50, 'Ergonomic mechanical keyboard', 'Mechanical Keyboard', 79.50, 1),
    (3, 30, '1080p Full HD Monitor', 'HD Monitor', 149.00, 2),
    (4, 200, 'USB-C to HDMI adapter', 'HDMI Adapter', 15.75, 3),
    (5, 120, 'Noise-cancelling headphones', 'Headphones', 199.99, 1),

    (6, 80, 'RGB backlit mechanical keyboard with blue switches', 'RGB Mechanical Keyboard', 89.99, 4),
    (7, 60, 'Compact 60% mechanical keyboard', 'Mini Mechanical Keyboard', 69.00, 4),
    (8, 100, 'Wireless membrane keyboard with long battery life', 'Wireless Keyboard', 39.50, 4),
    (9, 40, 'Ergonomic keyboard with wrist support', 'Ergo Keyboard', 59.99, 4);