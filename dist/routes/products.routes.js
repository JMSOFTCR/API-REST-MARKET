"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const router = express_1.Router();
const products_controller_1 = require("../controllers/products.controller");
router.route('/')
    .get(products_controller_1.getProducts)
    .post(products_controller_1.createProducts);
router.route('/:productId')
    .get(products_controller_1.getProduct)
    .delete(products_controller_1.deleteProduct)
    .put(products_controller_1.updateProduct);
exports.default = router;
