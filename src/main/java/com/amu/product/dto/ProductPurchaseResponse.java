package com.amu.product.dto;

import java.math.BigDecimal;

public record ProductPurchaseResponse (
        Integer productId,
        String name,
        String description,
        BigDecimal price,
        double quantity
){
}
