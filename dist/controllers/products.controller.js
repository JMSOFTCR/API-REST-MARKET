"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const database_1 = require("../database");
function getProducts(req, res) {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            const conn = yield database_1.connect();
            const products = yield conn.query('SELECT a.idarticulo,a.idcategoria, a.idwarehouse, w.namewarehouse as warehouse, c.nombre as categoria,a.codigo, a.nombre,a.stock,a.descripcion,a.imagen,a.condicion, a.precio_costo, a.profit, a.precio_venta, a.others FROM articulo a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN warehouse w on a.idwarehouse=w.idwarehouse');
            return res.json(products[0]);
        }
        catch (e) {
            console.log(e);
        }
    });
}
exports.getProducts = getProducts;
function createProducts(req, res) {
    return __awaiter(this, void 0, void 0, function* () {
        const newProducts = req.body;
        const conn = yield database_1.connect();
        yield conn.query('INSERT INTO products set ?', [newProducts]);
        return res.json({
            message: 'Product created'
        });
    });
}
exports.createProducts = createProducts;
function getProduct(req, res) {
    return __awaiter(this, void 0, void 0, function* () {
        const id = req.params.productId;
        const conn = yield database_1.connect();
        const products = yield conn.query('SELECT * FROM products where id = ?', [id]);
        return res.json(products[0]);
    });
}
exports.getProduct = getProduct;
function deleteProduct(req, res) {
    return __awaiter(this, void 0, void 0, function* () {
        const id = req.params.productId;
        const conn = yield database_1.connect();
        yield conn.query('DELETE FROM products WHERE id = ?', [id]);
        return res.json({
            message: 'Product deleted'
        });
    });
}
exports.deleteProduct = deleteProduct;
function updateProduct(req, res) {
    return __awaiter(this, void 0, void 0, function* () {
        const id = req.params.productId;
        const updateProduct = req.body;
        const conn = yield database_1.connect();
        yield conn.query('UPDATE products SET ? WHERE id = ?', [updateProduct, id]);
        return res.json({
            message: 'Product updated'
        });
    });
}
exports.updateProduct = updateProduct;
