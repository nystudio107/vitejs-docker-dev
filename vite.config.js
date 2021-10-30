// https://vitejs.dev/config/
export default ({ command }) => ({
    build: {
        emptyOutDir: true,
    },
    plugins: [
    ],
    server: {
        host: '0.0.0.0',
    }
});
