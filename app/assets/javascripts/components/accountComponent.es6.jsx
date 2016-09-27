class AccountComponent extends React.Component {
  render() {
    debugger;
    return (
      <div>
        <h2>{this.props.user.accounts[0].account_name}</h2>
        <h2>{this.props.user.accounts[0].account_type}</h2>
      </div>
    )
  }
}
