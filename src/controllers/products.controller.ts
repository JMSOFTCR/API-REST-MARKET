import { Request, Response } from "express";

import { connect } from "../database";

import { Products } from "../interfaces/Products";

export async function getProducts(req: Request, res: Response): Promise<Response | void>{
    const conn = await connect();
    const products = await conn.query('SELECT * FROM products');
    res.json(products[0]);
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