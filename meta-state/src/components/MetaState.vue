<script lang="ts">

export default {
  name: 'MetaState',

  data() {
    return {
      message: 'Here wil be json data from meta-state',
      jsonData: [
        {
          "description": "Client creates a vault",
          "nodes": [
            {
              "name": "device_a",
              "records": [
                {
                  "key": "DeviceA/VaultAudit/test_vault@1",
                  "value": "JoinRequest { device_a }"
                }
              ]
            },
            {
              "name": "device_b",
              "records": []
            },
            {
              "name": "server",
              "records": []
            }
          ]
        },
        {
          "description": "Server: gets a vault creation request",
          "nodes": [
            {
              "name": "device_a",
              "records": [
                {
                  "key": "DeviceA/VaultAudit/test_vault@1",
                  "value": "JoinRequest { device_a }"
                }
              ]
            },
            {
              "name": "device_b",
              "records": []
            },
            {
              "name": "server",
              "records": [
                {
                  "key": "DeviceA/VaultAudit/test_vault@1",
                  "value": "JoinRequest { device_a }"
                }
              ]
            }
          ]
        }
      ]
    }
  },
  methods: {}

}
</script>

<template>
  <div class="container">
    <div style="display: flex; padding: 10px">
      <textarea v-model="message"></textarea>
    </div>

    <div class="card" style="margin: 10px" v-for="state of jsonData">
      <h2 class="header">{{ state.description }}</h2>
      <div v-for="node of state.nodes">
        <div style="display:flex; justify-content: flex-start;">
          <em style="text-align: left;">{{ node.name }} records:</em>
        </div>

        <div v-if="node.records.length === 0" style="text-align: left; padding: 10px 10px 20px;">
          <span>No records</span>
        </div>

        <div>
          <ul class="record-list" v-for="record of node.records">
            <li class="record">
              <div class="key-value-pair">
                <span class="key">{{ record.key }}:</span>
                <span class="value">{{ record.value }}</span>
              </div>
            </li>
          </ul>
        </div>
      </div>
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
  display: flex;
  padding: 25px;
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
  text-align: justify;
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

.key-value-pair {
  margin-bottom: 10px;
}

.key {
  font-weight: bold;
  margin-right: 5px;
}

.value {
  color: #333;
}
</style>
