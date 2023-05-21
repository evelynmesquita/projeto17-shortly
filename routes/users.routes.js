import {Router} from 'express'
import { registerUser, signIn } from '../controllers/users.controller.js'
import validateSchema from '../middlewares/validate.schemas.js'
import { signUpSchema, signInSchema } from '../schemas/user.schemas.js'
import { authenticateToken } from '../middlewares/authenticateToken.middlewares.js'

const usersRoutes = Router();

usersRoutes.post("/signup", validateSchema(signUpSchema),registerUser );
usersRoutes.post("/signin", validateSchema(signInSchema),signIn);

export default usersRoutes;