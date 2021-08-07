<template>
  <div v-if="data" class="mt-3 h-screen">
    <div>
      <div
        class="hidden xl:flex flex-col justify-center items-center rounded-lg"
      >
        <iframe
          width="1280px"
          height="720px"
          :src="'https://www.youtube.com/embed/' + data.videos[0].tag"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe>
      </div>
      <div
        class="flex sm:hidden flex-col justify-center items-center rounded-lg"
      >
        <iframe
          width="100%"
          height="240px"
          :src="'https://www.youtube.com/embed/' + data.videos[0].tag"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe>
      </div>
      <div
        class="
          hidden
          sm:flex
          md:hidden
          flex-col
          justify-center
          items-center
          rounded-lg
        "
      >
        <iframe
          width="100%"
          height="420px"
          :src="'https://www.youtube.com/embed/' + data.videos[0].tag"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe>
      </div>
      <div
        class="
          hidden
          md:flex
          xl:hidden
          flex-col
          justify-center
          items-center
          rounded-lg
        "
      >
        <iframe
          width="100%"
          height="480px"
          :src="'https://www.youtube.com/embed/' + data.videos[0].tag"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe>
      </div>
      <div
        class="
          hidden
          lg:hidden
          xl:hidden
          flex-col
          justify-center
          items-center
          rounded-lg
        "
      >
        <iframe
          width="100%"
          height="240px"
          :src="'https://www.youtube.com/embed/' + data.videos[0].tag"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe>
      </div>
    </div>
    <div
      class="
        flex flex-row
        justify-center
        text-center
        mt-3
        text-gray-600
        font-semibold
      "
    >
      {{ data.videos[0].description }}
    </div>
    <div class="flex flex-row justify-between px-3 mt-3">
      <div class="text-blue-600 font-bold">{{ data.videos[0].author }}</div>
      <div class="text-blue-600 font-bold">{{ data.videos[0].duration }}</div>
    </div>
    <div class="flex flex-row gap-2 px-3 mt-3">
      <div
        class="bg-blue-400 rounded-3xl px-1 py-1 text-white font-semibold"
        v-for="chip in data.videos[0].categories"
        :key="chip"
      >
        {{ chip }}
      </div>
    </div>
  </div>
  <div v-else class="flex h-screen justify-center items-center">
    <Loader />
  </div>
</template>

<script>
import gql from "graphql-tag";
import { useRoute } from "vue-router";
import { useQuery } from "villus";
import Loader from "../components/Loader.vue";

export default {
  components: {
    Loader,
  },
  setup() {
    const route = useRoute();
    const id = route.query.v;
    const GetVideo = gql`
      query GetVideo($id: String!) {
        videos(published: true, id: $id) {
          id
          description
          author
          duration
          url
          categories
          tag
        }
      }
    `;
    const { data } = useQuery({
      query: GetVideo,
      variables: { id: id },
    });

    return { data };
  },
};
</script>