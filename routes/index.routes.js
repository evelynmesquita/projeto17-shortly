import { Router } from "express";
import usersRoutes from "./users.routes.js";
import urlsRoutes from "./urls.routes.js";

const router = Router();
router.use(usersRoutes);
router.use(urlsRoutes);

export default router;