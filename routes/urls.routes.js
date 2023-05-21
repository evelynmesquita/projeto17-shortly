import {Router} from 'express';
import { shortenUrl, findURLById, getShortURL, deleteURL, usersMe, getRanking} from '../controllers/urls.controller.js'
import { shortenUrlSchema } from '../schemas/urls.schemas.js'
import validateSchema from '../middlewares/validate.schemas.js'
import { authenticateToken } from '../middlewares/authenticateToken.middlewares.js'

const urlsRoutes = Router();

urlsRoutes.post("/urls/shorten", validateSchema(shortenUrlSchema),authenticateToken,shortenUrl);
urlsRoutes.get("/urls/:id", findURLById);
urlsRoutes.get("/urls/open/:shortUrl", getShortURL);
urlsRoutes.delete("/urls/:id", authenticateToken,deleteURL);
urlsRoutes.get("/users/me", authenticateToken,usersMe );
urlsRoutes.get("/ranking", getRanking);

export default urlsRoutes;