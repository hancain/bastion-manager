<script>
import SidebarEntry from './SidebarEntry.vue';

const entries = [
]
</script>

<!-- make list of items to insert via app vue-->

<template>
     <v-navigation-drawer permanent>
        <v-list :items="entries"></v-list>
      </v-navigation-drawer>
</template>