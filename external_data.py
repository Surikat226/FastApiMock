class Users:
    users_list = []
    user = {}

    def save_user(self, name, last_name):
        self.user['name'] = name
        self.user['last_name'] = last_name
        self.users_list.append(self.user)

    def get_users(self):
        return self.users_list
