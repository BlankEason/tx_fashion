//配置文件，将来被nodejs运行
module.exports={
  mode:'development', //开发模块
  //mode:'production'//产品模式,会对代码压缩，打包过程会慢
  //1.入口文件:从哪个文件开始打包
  entry:'./src/main.js',
  //2.出口文件:打包后输出的文件
  output: {
    path: __dirname+'/dist',//目录：使用绝对路径
    filename:'bundle.js'
  },
  //3.加载器：默认情况下，webpack只能打包js文件，如果想打包其它格式文件需要有对应的加载器(loader)
  module:{
    rules:[
      //检查如果模块以.css结尾的话，就使用指定的加载器
      {
        test:/\.css$/,
        use:['style-loader','css-loader']
      },
      { 
        test:/\.scss$/,
        use:['style-loader','css-loader','sass-loader']
      },
      {
        test:/\.jpg|gif|png|bmp|eot|ttf|woff|woff2|svg$/,
        use:'url-loader?limit=25600'
      }
    ]
  }
}