(function($) {
    "use strict";
    $(document).ready(function () {
        $('#CategoryTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: $('#table-url').data("url"),
            columns: [
                {
                    data: 'category_image',
                    name: 'category_image',
                    searchable: false,
                    orderable: false
                }, {
                    data: 'Category_Name',
                    name: 'Category_Name'
                },
                {
                    data: 'Category_Slug',
                    name: 'Category_Slug'
                },
                {
                    data: 'Description',
                    name: 'Description'
                },
                {
                    data: 'Category_Icon',
                    name: 'Category_Icon'
                },
                {
                    data: 'Status',
                    name: 'Status'
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: false
                }
            ]
        });
    });
})(jQuery)
