class App extends React.Component {

  render() {
    if (this.props.user.accounts.length > 0) {
      return (
        <AccountComponent user={this.props.user} />
      )
    } else {
      return (
        <NewAccountComponent user={this.props.user} />
      )
    }
  }
}
