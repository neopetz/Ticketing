$(document).ready(function () {
	let table = $('#bus-schedule-table').DataTable({
		columnDefs: [
			{ responsivePriority: 1, targets: 0 },
			{ responsivePriority: 2, targets: -1 }
		],
		responsive: {
			details: {
				renderer: function (api, rowIdx, columns) {
					var anyHidden = false;
					var data = $.map(columns, function (col, i) {
						if (col.hidden) {
							anyHidden = true;
						}
						var hidden = col.hidden ? true : !table.column(col.columnIndex).visible();
						return hidden ? '<tr data-dt-row="' + col.rowIndex + '" data-dt-column="' + col.columnIndex + '">'
						 + '<td>' + col.title + '</b></td> ' + '<td>' + table.cell(rowIdx, i).render('display') + '</td>' + '</tr>' : '';
					}).join('');

					return anyHidden ? $('<table/>').append(data) : false;
				}
			}
		}
	});
});