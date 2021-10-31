// https://vitejs.dev/config/
export default ({ command }) => ({
    build: {
        emptyOutDir: true,
    },
    // These deps fail to resolve for some reason
    optimizeDeps: {
        exclude: ['fs-dir/test', 'regex/test', 'dep', 'foo', '@virtual-file']
    },
    plugins: [
    ],
    server: {
        host: '0.0.0.0',
    }
});
