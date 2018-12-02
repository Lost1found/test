package test;

public class UserBank {
	private static User[] users= {
		new User("zhangsan","123","张三"),
		new User("lisi","123","李四"),
		new User("wangwu","123","王五"),
	};
	public static boolean checkUser(User u) {
		for(int i=0;i<users.length;i++) {
			if(u.getmUserName().equals(users[i].getmUserName())&&
					u.getmPassWord().equals(users[i].getmPassWord()))
				return true;
		}
		return false;
	}
	public static boolean checkUser2(User u) {
		for(int i=0;i<users.length;i++) {
			if(u.getmUserName().equals(users[i].getmUserName())&&
					u.getmPassWord().equals(users[i].getmPassWord())&&
					users[i].getmUserRealName().equals(u.getmUserRealName()))
				return true;
		}
		return false;
	}
	public static void addUser(User u) {
		int space=users.length+1;
		User[] newUsers=new User[space];
		System.arraycopy(users, 0, newUsers, 0, users.length);
		newUsers[users.length]=u;
		users=newUsers;
	}
}