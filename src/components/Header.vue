<template>
  <div className="container mx-auto overflow-x-hidden">
    <div
      className="px-4 xl:px-4 2xl:px-0 flex flex-row justify-between py-2 items-center"
    >
      <div className="font-bold text-blue-600 text-lg md:text-base lg:text-xl">
        <router-link to="/">CodeCamp</router-link>
      </div>
      <div
        className="hidden sm:block font-base text-gray-600 text-xs hover:text-blue-300"
      >
        <div v-if="path != '/'" class="flex flex-row gap-3">
          <div>Videos</div>
          <div>Course</div>
          <div>Articles</div>
        </div>
        <div v-else class="flex flex-row gap-3">
          <div>Login</div>
          <div>SignUp</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { useRouter } from "vue-router";

const router = useRouter();
const path = router.path;
</script>