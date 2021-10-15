module.exports = {
	env: {
		browser: true,
		es2021: true,
	},
	extends: ['airbnb-base'],
	parser: '@typescript-eslint/parser',
	parserOptions: {
		ecmaVersion: 12,
		sourceType: 'module',
	},
	plugins: ['@typescript-eslint'],
	rules: {
		indent: [2, 'tab', { SwitchCase: 1, VariableDeclarator: 1 }],
		'no-tabs': 0,
		'linebreak-style': 0,
		'no-console': 0,
	},
	overrides: [
		{
			files: ['webpack.dev.js', 'webpack.prod.js', 'webpack.common.js'],
			rules: {
				'import/no-extraneous-dependencies': [
					'error',
					{
						devDependencies: ['webpack.dev.js', 'webpack.prod.js', 'webpack.common.js'],
					},
				],
			},
		},
	],
};
