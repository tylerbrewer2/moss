class NewAccountComponent extends React.Component {
  constructor(props) {
    super(props)
    this.createAccount = this.createAccount.bind(this);
  }

  createAccount(e) {
    e.preventDefault();

    accountName = this.refs.name.value;
    accountType = this.refs.accountType.value;

    $.ajax({
      method: 'POST',
      url: '/api/account/create',
      data: { account: { account_name: accountName, account_type: accountType }},
      dataType: 'json'
    }).done(function() {
      window.location.replace('/dashboard')
    }).fail(function() {
      alert('sad day bruh');
    })
  }

  render() {
    return (
      <div>
        <h2>It looks like you don't have any accounts. Go ahead and create one!</h2>
        <form>
          <label htmlFor='name'>Account Name</label>
          <input type="text" name='name' ref='name'/>
          <label htmlFor='accountType'>Account Type</label>
          <input type="text" name='accountType' ref='accountType'/>
          <button onClick={this.createAccount} type='submit'>Create Account</button>
        </form>
      </div>
    )
  }
}
