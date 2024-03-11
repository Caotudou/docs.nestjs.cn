module.exports = {
  apps: [
    {
      name: 'docs.nest', // 项目名字,启动后的名字
      script: './node_modules/.bin/docsify', // 执行的文件
      args:'start ./ --config ssr.config.js',
      cwd: './', // 根目录
      "error_file": "./log/err.log", // 错误日志
      "out_file": "./log/out.log", // 输出日志
    },
  ],
};