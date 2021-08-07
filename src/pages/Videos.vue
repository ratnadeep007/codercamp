<template>
  <div v-if="data" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
    <div v-for="video in data.videos" v-bind:key="video.id">
      <VideoCard :video="video" />
    </div>
  </div>
  <div v-else class="flex h-screen justify-center items-center">
    <Loader />
  </div>
</template>

<script>
import { useQuery } from "villus";
import { gql } from "graphql-tag";
import VideoCard from "../components/VideoCard.vue";
import Loader from "../components/Loader.vue";

export default {
  components: { VideoCard, Loader },
  setup() {
    const GetVideos = gql`
      query GetVideos {
        videos(published: true, _filter: { courses: { _eq: [] } }) {
          id
          description
          duration
          author
          tag
          thumbnail
        }
      }
    `;
    const { data } = useQuery({
      query: GetVideos,
    });
    console.log(data);
    return { data };
  },
};
</script>