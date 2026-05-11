<template>
  <div>
    <md-table v-model="users" :table-header-color="tableHeaderColor" md-sort="name" md-sort-order="asc" md-card>
      <md-table-row slot="md-table-row" slot-scope="{ item }">
        <md-table-cell md-label="ID" md-sort-by="id" md-numeric>{{ item.id }}</md-table-cell>
        <md-table-cell md-label="Name" md-sort-by="name">{{ item.name }}</md-table-cell>
        <md-table-cell md-label="Salary" md-sort-by="salary">{{ item.salary }}</md-table-cell>
        <md-table-cell md-label="Country" md-sort-by="country">{{ item.country }}</md-table-cell>
        <md-table-cell md-label="City" md-sort-by="city">{{ item.city }}</md-table-cell>
      </md-table-row>
    </md-table>
  </div>
</template>

<script>
export default {
  name: "ordered-table",
  props: {
    tableHeaderColor: {
      type: String,
      default: "",
    },
  },
  data() {
    return {
      selected: [],
      users: [
        {
          id: 1,
          name: "Dakota Rice",
          salary: "$36,738",
          country: "Niger",
          city: "Oud-Turnhout",
        },
        {
          id: 2,
          name: "Minerva Hooper",
          salary: "$23,738",
          country: "Curaçao",
          city: "Sinaai-Waas",
        },
        {
          id: 3,
          name: "Sage Rodriguez",
          salary: "$56,142",
          country: "Netherlands",
          city: "Overland Park",
        },
        {
          id: 4,
          name: "Philip Chaney",
          salary: "$38,735",
          country: "Korea, South",
          city: "Gloucester",
        },
      ],
    };
  },
};
</script>

<style lang="scss" scoped>
::v-deep .md-table-head-container {
  display: flex;
  align-items: center;
  justify-content: flex-start;
}

::v-deep .md-table-head-label {
  display: flex;
  align-items: center;
  width: 100%;
}

::v-deep .md-table-sortable-icon {
  position: static !important;
  margin-left: 8px;
  color: #ff9800 !important; // Couleur orange (brand-warning)
  fill: #ff9800 !important;
}

::v-deep .md-table-head.md-sortable:hover .md-table-sortable-icon,
::v-deep .md-table-head.md-sortable.md-sorted .md-table-sortable-icon {
  opacity: 1;
  color: #ff9800 !important;
}
</style>
