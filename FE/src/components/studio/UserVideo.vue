<template>
  <div class="studio-film-tab__film">
    <div class="studio__video-section" v-if="streamManager">
      <ov-video :stream-manager="streamManager" />
      <div class="nickname-section">
        {{ clientData }}
      </div>
    </div>
  </div>
</template>

<script>
import OvVideo from "@/components/studio/OvVideo.vue";

export default {
  name: "UserVideo",

  components: {
    OvVideo,
  },

  props: {
    streamManager: Object,
  },

  computed: {
    clientData() {
      const { clientData } = this.getConnectionData();
      return clientData;
    },
  },

  methods: {
    getConnectionData() {
      const { connection } = this.streamManager.stream;
      return JSON.parse(connection.data);
    },
  },
};
</script>

<style scoped lang="scss">
.studio-film-tab__film {
  margin: 6px 5%;
  padding: 18px;
  border-radius: 15px;
  background-color: $efefe-gray;
  display: inline-block;
  flex-direction: row;
  position: relative;

  ov-video {
    position: absolute;
    top: 0;
  }
}

.video-section {
  position: absolute;
}
.studio__video-section {
  display: flex;
  align-content: flex-end;
  justify-content: center;
  flex-direction: column;
}
.nickname-section {
  padding-top: 10px;
  text-align: center;
  color: black;
  border-radius: 8px;
  flex-direction: column;
  align-items: center;
}
</style>
