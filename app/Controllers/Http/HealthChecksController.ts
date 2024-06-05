import { HttpContextContract } from "@ioc:Adonis/Core/HttpContext";

export default class HealthCheckController {
  public async index({ response }: HttpContextContract) {
    return response.json({ status: "ok" });
  }
}
