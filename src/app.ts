import express, {Application} from "express";
import morgan from "morgan";

import  IndexRoutes  from "./routes/index.routes";
import  ProductsRoutes  from "./routes/products.routes";


export class App{

    private app: Application;

    constructor(private port?: number | string){
        this.app = express();
        this.setting();
        this.middlewares();
        this.routes();
    }


    setting(){
        this.app.set('port', this.port || process.env.PORT || 3000);
        //this.app.use(cors(config.application.cors.server));
    }

    middlewares(){
        this.app.use(morgan('dev'));
        this.app.use(express.json());
        this.app.use((req, res, next) => {
            res.header('Access-Control-Allow-Origin', '*');
            res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
            res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
            res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
            next();
        });
    }

    routes(){
        this.app.use(IndexRoutes);
        this.app.use('/products', ProductsRoutes);
    }

    async listen(){
       await this.app.listen(this.app.get('port'));
       console.log('Server on port',this.app.get('port'));
    }

    
}

    

