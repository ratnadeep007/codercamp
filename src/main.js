import { createApp } from "vue";
import "./index.css";
import App from "./App.vue";
import router from "./routes/router";
import { client } from "./api/gql-client";

const app = createApp(App);
app.use(router);
app.use(client);
app.mount("#app");
