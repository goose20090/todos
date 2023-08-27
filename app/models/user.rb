class User

    attr_reader :email

    def initialize (email)
        @email = email
    end

    def todos
        Todo.where(email: self.email)
    end

    def signed_in?
        self.email.present?
    end
end