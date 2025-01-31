import fastify from "fastify"
import cors from "@fastify/cors"
import { questsRoutes } from "./routes/quests"

export const server = fastify()

server.register(questsRoutes)
server.register(require('@fastify/cors'), {
    origin: '*',
    methods: ['GET', 'POST', 'PUT', 'DELETE'],
  });

server.listen({
    port: 4130,
    host: '0.0.0.0'
}).then(() => {
    console.log("Server is running on http://localhost:4130")
})
