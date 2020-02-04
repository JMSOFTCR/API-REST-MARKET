import { Request, Response } from "express";

import { connect } from "../database";

import { Products } from "../interfaces/Products";

export async function getProducts(req: Request, res: Response): Promise<Response | void>{
   try {
    const conn = await connect();
    const products = await conn.query('SELECT a.idarticulo,a.idcategoria, a.idwarehouse, w.namewarehouse as warehouse, c.nombre as categoria,a.codigo, a.nombre,a.stock,a.descripcion,a.imagen,a.condicion, a.precio_costo, a.profit, a.precio_venta, a.others FROM articulo a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN warehouse w on a.idwarehouse=w.idwarehouse');
    return res.json(products[0]);
   }
    catch (e) {
        console.log(e)    
   }
}

export async function createProducts(req: Request, res: Response): Promise<Response | void>{
    const newProducts: Products = req.body;
    const conn = await connect();
    await conn.query('INSERT INTO products set ?', [newProducts])
    return res.json({
        message: 'Product created'
    });
}

export async function getProduct(req: Request, res: Response): Promise<Response | void>{
    const id = req.params.productId;
    const conn = await connect();
    const products = await conn.query('SELECT * FROM products where id = ?', [id]);
    return res.json(products[0]);
}

export async function deleteProduct(req: Request, res: Response): Promise <Response | void>{
    const id = req.params.productId;
    const conn = await connect();
    await conn.query('DELETE FROM products WHERE id = ?', [id]);
    return res.json({
        message: 'Product deleted'
    });
}

export async function updateProduct(req: Request, res: Response): Promise<Response | void>{
    const id = req.params.productId;
    const updateProduct: Products = req.body;
    const conn = await connect();
    await conn.query('UPDATE products SET ? WHERE id = ?', [updateProduct, id]);
    return res.json({
        message: 'Product updated'
    });
}