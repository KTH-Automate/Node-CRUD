import {Router} from "express";
import {
  createResource,
  deleteResourceById,
  getAllResources,
  getResourceById,
  updateResourceById,
} from "../controller/resource-controller"; 

const router = Router();

router.post("/resource", createResource);
router.get("/resource", getAllResources);
router.get("/resource/:id", getResourceById);
router.put("/resource/:id", updateResourceById);
router.delete("/resource/:id", deleteResourceById);

export default router;