<script lang="ts">
import json from '../assets/state.json';

export default {
  name: 'MetaState',

  data() {
    return {
      message: 'Here wil be json data from meta-state',
      jsonData: json
    }
  },
  methods: {}

}
</script>

<template>
  <div style="display: flex; flex-direction: column; text-align: justify" v-for="workflow of jsonData">
    <div style="padding-left: 35px">
      <h2> {{ workflow.workflowName }}</h2>
    </div>
    <div style="padding-left: 35px">
      <span> {{ workflow.description }}</span>
    </div>

    <div class="container">
      <div class="card" style="margin: 10px" v-for="state of workflow.states">
        <div class="header">
          <span class="text-lg bold">{{ state.description }}</span>
        </div>

        <div v-for="node of state.nodes">
          <div style="display:flex; justify-content: flex-start;">
            <span class="text-xl bold" style="text-align: left; padding-right: 5px">{{ node.name }}</span>
            <span class="text-xl">objects: </span>
          </div>

          <div v-if="node.objects.length === 0" style="text-align: left; padding: 10px 10px 20px;">
            <span>No objects</span>
          </div>

          <div v-for="persistentObject of node.objects">
            <div style="display:flex; justify-content: flex-start; padding-left: 10px; padding-top: 15px">
              <span style="text-align: left;">{{ persistentObject.name }} {</span>
            </div>
            <ul class="record-list" v-for="record of persistentObject.records">
              <li class="record">
                <div style="padding-left: 10px">
                  <span class="key">{{ record.key }}:</span>
                  <span class="value">{{ record.value }}</span>
                </div>
              </li>
            </ul>

            <div style="display:flex; justify-content: flex-start; padding-left: 10px; padding-bottom: 15px">
              <span style="text-align: left;">}</span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 5px"></div>
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
  display: flex;
  padding: 25px;
  flex-wrap: wrap;
}

.card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 20px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.header {
  text-align: center;
  margin-bottom: 20px;
}

.record-list {
  list-style: none;
  padding: 0;
  text-align: justify;
}

.record {
  background-color: #f9f9f9;
  padding: 10px;
  margin-bottom: 10px;
  border-radius: 4px;
  margin-left: 20px;
}

.record-highlight {
  background-color: #f9f9f9;
  padding: 10px;
  margin-bottom: 10px;
  border-radius: 4px;
  margin-left: 20px;
}

.record:last-child {
  margin-bottom: 0;
}

.key {
  font-weight: bold;
  margin-right: 5px;
}

.value {
  color: #333;
}

.text-lg {
  font-size: 1.125rem;
  line-height: 1.75rem;
}

.text-xl {
  font-size: 1.25rem;
  line-height: 1.75rem;
}

.bold {
  font-weight: 700;
}

</style>
