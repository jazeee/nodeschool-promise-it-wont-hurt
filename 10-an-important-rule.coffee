require('es6-promise')

alwaysThrows = -> throw new Error "OH NOES"

iterate = (parameter) ->
	console.log parameter
	parameter + 1

Promise.resolve 1
	.then iterate
	.then iterate
	.then iterate
	.then iterate
	.then iterate
	.then alwaysThrows
	.then iterate
	.then iterate
	.then iterate
	.then iterate
	.then iterate
	.catch alwaysThrows
	.catch console.log
