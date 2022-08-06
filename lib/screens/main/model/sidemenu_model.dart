class SideMenuOptions {
  final String title;
  final String icon;

  SideMenuOptions({required this.title, required this.icon});

  static List<SideMenuOptions> sideOptions = [
    SideMenuOptions(title: 'Dashboard', icon: '/icons/menu_dashbord.svg'),
    SideMenuOptions(title: 'Transaction', icon: '/icons/menu_dashbord.svg'),
    SideMenuOptions(title: 'Task', icon: '/icons/menu_task.svg'),
    SideMenuOptions(title: 'Documents', icon: '/icons/menu_doc.svg'),
    SideMenuOptions(title: 'Store', icon: '/icons/menu_store.svg'),
    SideMenuOptions(
        title: 'Notification', icon: '/icons/menu_notification.svg'),
    SideMenuOptions(title: 'Profile', icon: '/icons/menu_profile.svg'),
    SideMenuOptions(title: 'Settings', icon: '/icons/menu_setting.svg'),
  ];
}
