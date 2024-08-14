const base = {
    get() {
        return {
            url : "http://localhost:8080/gaoxiaojingsaiguanlixitong/",
            name: "gaoxiaojingsaiguanlixitong",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/gaoxiaojingsaiguanlixitong/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "高校竞赛管理系统"
        } 
    }
}
export default base
