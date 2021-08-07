<template>
  <div>
    <div class="px-4 xl:px-0 grid grid-cols-3">
      <div
        class="
          col-span-3
          lg:col-span-2
          flex flex-row
          justify-center
          lg:text-xl
          items-center
          xl:px-4
        "
      >
        <div class="flex flex-row text-center">
          <div>
            Welcome, to
            <span class="text-lg text-blue-600">CodeCamp!</span>
            <br />A free website which aggregates free video courses from
            different platforms.
          </div>
        </div>
      </div>
      <div class="hidden col-span-1 lg:flex flex-row justify-start lg:p-4">
        <img src="../assets/learning.svg" class="h-56" />
      </div>
    </div>
    <div class="px-4 xl:px-0 mt-4 flex flex-col">
      <div class="flex flex-row justify-center text-xl font-bold text-blue-600">
        Features
      </div>
      <div class="flex flex-row justify-around mt-3">
        <div class="flex flex-col justify-center items-center">
          <div class="text-base lg:text-2xl font-bold text-blue-500">
            Lifetime Free Courses and Videos
          </div>
          <div class="text-sm lg:text-lg font-medium text-gray-600 text-center">
            Courses and videos are from youtube which is curated by developers
            who learned different technologies from those videos.
          </div>
        </div>
        <div
          class="hidden md:flex md:flex-row md:items-center md:justify-center"
        >
          <img
            src="../assets/online_learning.svg"
            alt="Online learning image"
            class="h-52"
          />
        </div>
      </div>
      <div class="flex flex-row justify-around mt-3">
        <div
          class="hidden md:flex md:flex-row md:items-center md:justify-center"
        >
          <img
            src="../assets/youtube_tutorial.svg"
            alt="Online learning image"
            class="h-52"
          />
        </div>
        <div class="flex flex-col justify-center items-center">
          <div class="text-base lg:text-2xl font-bold text-blue-500">
            Content from best tutors on youtube
          </div>
          <div class="text-sm lg:text-lg font-medium text-gray-600 text-center">
            Youtube contains a large number of great content creators who worked
            professionally and now sharing knowledge for free.
          </div>
        </div>
      </div>
      <div class="flex flex-row justify-around mt-3">
        <div class="flex flex-col justify-center items-center">
          <div class="text-base lg:text-2xl font-bold text-blue-500">
            Professional Videos
          </div>
          <div class="text-sm lg:text-lg font-medium text-gray-600 text-center">
            Videos and courses here are used by developer of this site and other
            people to make there career in technical field.
          </div>
        </div>
        <div
          class="hidden md:flex md:flex-row md:items-center md:justify-center"
        >
          <div class="relative h-full">
            <Image
              width="270%"
              height="270%"
              objectFit="fill"
              src="/professional.svg"
              alt="Online learning image"
              class="w-full h-full"
            />
          </div>
        </div>
      </div>
    </div>
    <div class="px-4 xl:px-0 mt-4 flex flex-col">
      <div class="flex flex-row justify-center text-xl font-bold text-blue-600">
        Contents
      </div>
      <div class="flex flex-col md:grid md:grid-cols-3 md:gap-3">
        <div class="shadow-xl w-full px-4 py-2 mt-2 col-span-1">
          <div
            class="
              flex flex-col
              items-center
              justify-center
              text-blue-500
              font-bold
            "
          >
            Videos
          </div>
          <div class="text-center mt-1">
            Free videos related to topics such as web development, cloud and
            many more.
          </div>
          <div
            class="
              flex flex-row
              justify-center
              items-center
              mt-1
              cursor-pointer
            "
          >
            <div class="px-4 py-2 bg-blue-500 rounded-lg text-white">
              <a href="/videos">Watch</a>
            </div>
          </div>
        </div>
        <div class="shadow-xl w-full px-4 py-2 mt-2 col-span-1">
          <div
            class="
              flex flex-col
              items-center
              justify-center
              text-blue-500
              font-bold
            "
          >
            Course
          </div>
          <div class="text-center mt-1">
            Free courses from different sources, mini course, crash course and
            full course.
          </div>
          <div
            class="
              flex flex-row
              justify-center
              items-center
              mt-1
              cursor-pointer
            "
          >
            <div class="px-4 py-2 bg-blue-500 rounded-lg text-white">Watch</div>
          </div>
        </div>
        <div class="shadow-xl w-full px-4 py-2 mt-2 col-span-1">
          <div
            class="
              flex flex-col
              items-center
              justify-center
              text-blue-500
              font-bold
            "
          >
            Articles
          </div>
          <div class="text-center mt-1">
            Free articles and research papers that increase your knowledge.
          </div>
          <div class="flex flex-row justify-center items-center mt-1">
            <div class="px-4 py-2 text-blue-500">Coming Soon</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
</script>