// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
	site: 'https://theblockiest.github.io',
	base: '/xdrv-charting-guide',

	integrations: [
		starlight({
			title: 'XDRV Charting Guide',
			customCss: ['./src/styles/custom.css',],
			logo: {
				src: './src/assets/logo_simple.webp',
			},
			favicon: './src/assets/favicon.jpg',
			social: [{ icon: 'github', label: 'GitHub', href: 'https://github.com/theblockiest/xdrv-charting-guide' },
				{ icon: 'blueSky', label: 'Bluesky', href: 'https://bsky.app/profile/theblockiest.bsky.social' },
				{ icon: 'external', label: 'Resources', href: '/xdrv-charting-guide/resources' },
				{ icon: 'youtube', label: 'Video Resources', href: '/xdrv-charting-guide/video-resources' }],
			sidebar: [
				{
					label: 'Getting Started',
					items: [
						{ label: 'Charting Tools', slug: 'getting-started/tools' },
						{ label: 'Setting Up Your Chart', slug: 'getting-started/chart-setup' },
						{ label: 'Using Trackmaker', slug: 'getting-started/trackmaker' },
						{ label: 'XDRV Custom Support', slug: 'getting-started/custom-support' },
					],
				},
				{
					label: 'Patterns',
					items: [
						{ label: 'General Charting Practices', slug: 'patterns/general-practices' },
						{ label: 'Tap & Hold Note Patterns', slug: 'patterns/tap-and-hold-notes' },
						{ label: 'Gear Patterns', slug: 'patterns/gears' },
						{ label: 'Charting Crossgears', slug: 'patterns/crossgears' },
						{ label: 'Using Drifts', slug: 'patterns/drifts' },
						{ label: 'Lowdiff Charting', slug: 'patterns/lowdiff-charting' },
					],
				},
				{
					label: 'Modding',
					items: [
						{ label: 'Modding Tools?', slug: 'modding/tools' },
					],
				},
				{
					label: 'Miscellaneous',
					items: [
						{ label: '"ETIQUETTE" of Charting', slug: 'misc/etiquette' },
						{ label: 'Getting Song Perms', slug: 'misc/song-perms' },
						{ label: 'Decoding Radar Values', slug: 'misc/radar-values' },
						{ label: 'Making a Chart Pack', slug: 'misc/chart-pack' },
					],
				},
				{
					label: 'QUICKSTART',
					items: [
						{ label: 'QUICKSTART: Getting Started', slug: 'quickstart/getting-started' },
						{ label: 'QUICKSTART: Patterns', slug: 'quickstart/patterns' },
						{ label: 'QUICKSTART: Modding', slug: 'quickstart/modding' },
					],
				},
			],
		}),
	],
});
