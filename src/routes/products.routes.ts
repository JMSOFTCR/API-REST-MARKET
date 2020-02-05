import { Router } from "express";
const router = Router();

import { 
    getProduct, 
    createProducts, 
    getProducts, 
    deleteProduct, 
    updateProduct 
} from "../controllers/products.controller";

router.route('/')
    .get(getProducts)
    .post(createProducts);

router.route('/:productId')
    .get(getProduct)
    .delete(deleteProduct)
    .put(updateProduct)
export default router;