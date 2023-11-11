<script lang="ts">
import {defineComponent} from 'vue';

export default defineComponent({
  name: 'HelloWorld',
  props: {
    msg: String,
  },
});
</script>

<template>
  <div class="container">
    <div class="card">
      <h2 class="header">Empty State</h2>
      <ul class="record-list">
        <li class="record">text1</li>
        <li class="record">text2</li>
        <li class="record">text3</li>
      </ul>
    </div>

    <div style="padding: 10px"></div>

    <div class="card">
      <h2 class="header">Empty State</h2>
      <ul class="record-list">
        <li class="record">text1</li>
        <li class="record">text2</li>
        <li class="record">text3</li>
      </ul>
    </div>
  </div>

</template>


<style scoped>
body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  font-family: Arial, sans-serif;
}

.container {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 25px;
  width: 600px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 20px;
  max-width: 600px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.header {
  text-align: center;
  margin-bottom: 20px;
}

.record-list {
  list-style: none;
  padding: 0;
}

.record {
  background-color: #f9f9f9;
  padding: 10px;
  margin-bottom: 10px;
  border-radius: 4px;
}

.record:last-child {
  margin-bottom: 0;
}
</style>
