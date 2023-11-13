<template>
  <MetaState/>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import MetaState from './components/MetaState.vue';

export default defineComponent({
  name: 'App',
  components: {
    MetaState
  }
});
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>

