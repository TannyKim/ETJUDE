<template lang="">
  <div class="chatting-container__line">
    <div class="line__time">
      <span>{{ line.chatTime }}</span>
    </div>
    <div class="line__chat">
      <span class="line__chat__chat">{{ line.content }}</span>
    </div>
  </div>
</template>
<script>
export default {
  name: "ChattingTabMyLine",
  props: { line: Object },
  setup() {},
};
</script>
<style lang="scss" scoped>
.chatting-container__line {
  display: flex;
  flex-direction: row;
  padding: 10px;
  justify-content: flex-end;
}

.line__chat {
  background-color: #ffe4e9;
  border-radius: 15px 15px 0px 15px;
  padding: 7px;
  display: flex;
  flex-direction: column;
}

.line__chat__chat {
  font-size: 14px;
  margin: 5px;
}

.line__time {
  display: flex;
  flex-direction: center;
  align-items: end;
  font-size: 12px;
  margin-right: 7px;
}
</style>
