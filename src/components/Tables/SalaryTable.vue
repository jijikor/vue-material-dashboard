<template>
  <div>
    <md-table v-model="employees" :table-header-color="tableHeaderColor" md-sort="name" md-sort-order="asc" md-card>
      <md-table-row slot="md-table-row" slot-scope="{ item }">
        <md-table-cell md-label="Nom" md-sort-by="name">{{ item.name }}</md-table-cell>
        <md-table-cell md-label="Salaire" md-sort-by="salary">{{ item.salary }}</md-table-cell>
      </md-table-row>
    </md-table>
  </div>
</template>

<script>
export default {
  name: "salary-table",
  props: {
    tableHeaderColor: {
      type: String,
      default: "",
    },
  },
  data() {
    return {
      employees: [
        {
          name: "Dakota Rice",
          salary: "$36,738",
        },
        {
          name: "Minerva Hooper",
          salary: "$23,738",
        },
        {
          name: "Sage Rodriguez",
          salary: "$56,142",
        },
        {
          name: "Philip Chaney",
          salary: "$38,735",
        },
      ],
    };
  },
};
</script>
