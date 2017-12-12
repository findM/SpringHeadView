# SpringHeadView
一行代码给你的UITableView或UIScrollView的头部加上弹簧拉伸的效果

### 效果
![效果](http://7u2lyw.com1.z0.glb.clouddn.com/blogblog_demo.gif)

### 使用

```ObjectiveC
//引入头文件
#import "UIScrollView+SpringHeadView.h"
//声明一个topView
self.topImageView.frame = CGRectMake(0, 0, self.tableView.bounds.size.width, SpringHeadViewHeight);
//添加到头部
[self.tableView addSpringHeadView:self.topImageView];
```

就是这么简单，赶快用起来吧，小伙伴们。如果你喜欢或使用，请给个star,你的支持十分重要。
