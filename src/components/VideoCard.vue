<template>
  <div
    class="
      flex flex-col
      items-center
      col-span-1
      px-4
      py-2
      drop-shadow-2xl
      border-2 border-blue-300
      rounded-lg
      cursor-pointer
    "
  >
    <a :href="'/watch?v=' + video.id" class="h-full">
      <div>
        <div class="flex flex-row justify-center">
          <img
            :src="video.thumbnail[0].thumbnails.large.url"
            alt=""
            class="h-60 object-cover"
          />
        </div>

        <div
          class="
            flex flex-row
            justify-center
            items-center
            text-md
            font-bold
            mt-4
            text-blue-500
          "
        >
          {{ video.title }}
        </div>
        <div
          class="
            flex flex-row
            justify-center
            items-center
            text-center text-gray-600 text-sm
            line-clamp-2
          "
        >
          {{ video.description }}
        </div>
        <div class="flex flex-row justify-between w-full mt-2">
          <div class="text-sm font-medium text-blue-400">
            {{ video.duration }}
          </div>
          <div class="text-sm font-bold text-blue-400">
            {{ video.author }}
          </div>
        </div>
      </div>
    </a>
  </div>
</template>

<script>
export default {
  props: ["video"],
};
</script>