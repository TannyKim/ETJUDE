<template>
  <div class="story__script-scene">
    <div class="story__script-scene-actor-image">
      <div class="actor__profile-frame">
        <img class="actor__profile-image" :src="scene.rolePhotoUrl" alt="" />
      </div>
    </div>
    <div class="script__line-section">
      <StoryScriptSceneLine
        v-for="line in scene.lines"
        :key="line.id"
        :line="line"
        :role="scene.roleName"
      ></StoryScriptSceneLine>
    </div>
  </div>
</template>

<script>
import StoryScriptSceneLine from "@/components/story/StoryScriptSceneLine.vue";

export default {
  name: "StoryScriptScene",
  components: { StoryScriptSceneLine },
  props: {
    scene: Object,
  },
  setup() {
    return {};
  },
};
</script>

<style scoped lang="scss">
.story__script-scene {
  display: flex;
  flex-direction: row;
  margin-bottom: 30px;
}
.story__script-scene-actor-image {
  width: 10%;
  display: flex;
  justify-content: center;
}
.script__line-section {
  // margin-top: 12px;
  width: 100%;
  margin-left: 30px;
}
.actor__profile-frame {
  // margin-top: 12px;
  width: 50px;
  height: 50px;
  border-radius: 70%;
  overflow: hidden;
  justify-content: center;
  img {
    max-width: 100%;
    height: auto;
  }
}
</style>
