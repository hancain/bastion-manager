<script>
const categoryData = {
   title: String,
   addable: Boolean,
   entries: Array
}
</script>

<!-- make custom objects with dynamic var (ex: room) for entries-->

<template>
     <div>
        <v-banner lines="one" text={{ categoryData.title }} :stacked="false">
            <template v-slot=actions>
               <v-btn icon="mdi-plus"></v-btn>
            </template>
        </v-banner>
        <v-infinite-scroll>
         <template v-for="(item, index) in categoryData.entries" :key="item">

         </template>
        </v-infinite-scroll>
     </div>
</template>