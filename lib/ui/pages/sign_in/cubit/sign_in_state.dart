class SignInState {
  const SignInState({
    this.loading = false,
    this.viewPassword = false,
  });

  final bool loading;
  final bool viewPassword;

  SignInState copyWith({
    bool? loading,
    bool? viewPassword,
  }) {
    return SignInState(
      loading: loading ?? this.loading,
      viewPassword: viewPassword ?? this.viewPassword,
    );
  }
}
