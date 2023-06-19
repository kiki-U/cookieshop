# 商品订单管理系统详细设计

## 使用Java和MySQL实现

# 目录

## CONTENT

1、摘要
2、需求分析
3、Dao层设计
4、Filter层设计
5、Model层设计
6、Service层设计
7、Servlet层设计
8、Utils层设计

# 摘要

本项目的目标是设计并实现一个商品订单管理系统，使用Java作为主要的开发语言，使用MySQL作为数据库。系统包含商品管理、订单管理、用户管理等多种功能。

# 需求分析

1、商品管理
系统需要能够支持商品的增删改查，展示商品的详细信息，并能够根据商品类型分类显示商品。

2、订单管理
系统需要支持用户创建订单，查看订单状态，修改订单信息以及删除订单。

3、用户管理
系统需要能够让用户注册新账户，登录已有账户，修改个人信息，并可以查看自己的购买历史。

# Dao层设计

1、GoodDao
GoodDao主要处理与商品相关的数据库操作，包括商品查询、获取商品数量、检查商品推荐状态、管理推荐商品以及商品的增删改查等功能。

2、OrderDao
OrderDao负责处理与订单相关的数据库操作，如插入订单和订单项、获取订单和订单项、获取订单数量、获取订单列表、更新订单状态、删除订单和订单项等。

3、TypeDao
TypeDao用于处理与商品类型相关的数据库操作，包括获取类型、插入类型、更新类型和删除类型等。

4、UserDao
UserDao负责处理与用户相关的数据库操作，包括添加用户、检查用户名和邮箱是否存在、用户验证、获取用户、更新用户信息、获取用户数量、获取用户列表和删除用户等。

# Filter层设计

1、字符编码过滤
项目中的doFilter用于设置请求和响应的字符编码，确保数据的正确传输和显示。

2、权限验证
AdminFilter用于对后台管理功能进行权限验证，确保只有具备管理员权限的用户可以访问后台管理页面。

# ApplicationListener 层设计

ApplicationListener 实现了 ServletContextListener，HttpSessionListener 和 HttpSessionAttributeListener 接口。这个类的主要功能如下：
1、应用程序启动：在 contextInitialized() 方法中，会设置所有类型的列表为servlet上下文的属性，以便在整个应用程序中访问。
2、应用程序关闭：在 contextDestroyed() 方法中，当Web应用程序关闭时会调用。
3、会话创建：在 sessionCreated() 方法中，当新的HTTP会话创建时会调用。
4、会话销毁：在 sessionDestroyed() 方法中，当HTTP会话销毁时会调用。
5、会话属性添加：在 attributeAdded() 方法中，当向HTTP会话添加新属性时会调用。
6、会话属性移除：在 attributeRemoved() 方法中，当从HTTP会话中移除属性时会调用。
7、会话属性替换：在 attributeReplaced() 方法中，当HTTP会话中的属性被替换时会调用。
8、这个类使用了 @WebListener 注解，这意味着它会自动注册为监听器，无需在部署描述符（web.xml）中进行配置。

# Model层设计

1、Goods 类
Goods 类存放商品的数据结构，主要的属性包括id、name、cover、image1、image2、price、intro、stock、type、isScroll、isHot 和 isNew。

2、Order类
Order类存放订单的数据结构，主要的属性有id、total、amount、status、paytype、name、phone、address、datetime、user、itemMap 和 itemList。

3、OrderItem类
OrderItem类的属性包括id、price、amount、goodsName、goods和order。

4、Page类
Page类的属性包括pageNumber、pageSize、totalCount、totalPage和list。

5、Recommend类
Recommend类的属性包括id、type和goods。

# Service层设计

1、GoodsService
GoodsService类提供了与商品相关的服务。

2、OrderService
OrderService类提供了与订单相关的服务。

3、TypeService
TypeService类提供了与类型相关的服务。

4、UserService
UserService类提供了与用户相关的服务。

# Servlet层设计

Servlet层主要处理与管理员操作、商品操作、订单操作、用户操作相关的请求。

# Utils层设计

1、PriceUtils
PriceUtils类的主要作用是提供精确的浮点数计算功能。

2、DataSourceUtils
DataSourceUtils类的主要作用是提供数据库连接的功能。

3、c3p0-config.xml
c3p0-config.xml是C3P0连接池的配置文件。

# 结论与心得

本文通过基于Servlet和JSP的网上购物商城设计，对电子商务领域进行了深入的研究和实践。项目分为前台商品展示和后台商品管理以及用户管理。Servlet和JSP是构建动态网站的强大工具。我们注重了数据库的设计与实现，提高了对数据查询的效率和数据操作的效率。项目多次用到了持久化的技术，运用本学期学到的知识，提高了用户的使用与购物体验。项目的总体结构，采用了MVC的架构思想。在项目的开发中，也遇到一些小问题，后期会继续完善这个功能。总的来说，通过这次的期末课程设计，我们了解和运用了多种JavaWeb技术，提高了编码能力和设计能力。

1) 处理管理员添加商品的请求。
2) AdminGoodsDeleteServlet：处理管理员删除商品的请求。
3) AdminGoodsEditServlet：处理管理员编辑商品的请求。
4) AdminGoodsEditshowServlet：处理管理员查看商品编辑页面的请求。
5) AdminGoodsListServlet：处理管理员查看商品列表的请求。
6) AdminGoodsRecommendServlet：处理管理员推荐商品的请求。
7) AdminOrderDeleteServlet：处理管理员删除订单的请求。
8) AdminOrderListServlet：处理管理员查看订单列表的请求。
9) AdminOrderStatusServlet：处理管理员更改订单状态的请求。
10) AdminTypeAddServlet：处理管理员添加商品类型的请求。
11) AdminTypeDeleteServlet：处理管理员删除商品类型的请求.
12) AdminTypeEditServlet：处理管理员编辑商品类型的请求.
13) AdminTypeListServlet：处理管理员查看商品类型列表的请求.
14) AdminUserAddServlet：处理管理员添加用户的请求.
15) AdminUserDeleteServlet：处理管理员删除用户的请求.
16) AdminUserEditServlet：处理管理员编辑用户的请求.
17) AdminUserEditshowServlet：处理管理员查看用户编辑页面的请求.
18) AdminUserListServlet：处理管理员查看用户列表的请求.
19) AdminUserResetServlet：处理管理员重置用户密码的请求.