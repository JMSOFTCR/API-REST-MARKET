import { Router } from "express";
import { getProducts, createProducts, getProduct, deleteProduct, updateProduct  } from "../controllers/products.controller";

const router = Router();

//Create route
router.route('/')
    .get(getProducts)
    .post(createProducts);

//create a route with params
router.route('/:productId')
    .get(getProduct)
    .delete(deleteProduct)
    .put(updateProduct)


export default router;