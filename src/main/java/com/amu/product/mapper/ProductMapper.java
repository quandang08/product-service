package com.amu.product.mapper;

import com.amu.product.entities.Category;
import com.amu.product.dto.ProductPurchaseResponse;
import com.amu.product.dto.ProductResponse;
import com.amu.product.entities.Product;
import jakarta.validation.constraints.NotNull;
import org.springframework.stereotype.Service;

@Service
public class ProductMapper {
    public Product toProduct(Product request) {
        return Product.builder()
                .id(request.getId())
                .name(request.getName())
                .description(request.getDescription())
                .price(request.getPrice())
                .availableQuantity(request.getAvailableQuantity())
                .category(Category.builder()
                        .id(request.getCategory().getId())
                        .build())
                .build();
    }

    public ProductResponse toProductResponse(Product product) {
        return new ProductResponse(
                product.getId(),
                product.getName(),
                product.getDescription(),
                product.getAvailableQuantity(),
                product.getPrice(),
                product.getCategory().getId(),
                product.getCategory().getName(),
                product.getCategory().getDescription()
        );
    }

    public ProductPurchaseResponse toProductPurchaseResponse(Product product, @NotNull(message = "Quantity is mandatory") double quantity) {
            return new ProductPurchaseResponse(
                    product.getId(),
                    product.getName(),
                    product.getDescription(),
                    product.getPrice(),
                    quantity
            );
    }
}
