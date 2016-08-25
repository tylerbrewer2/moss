class Introduction extends React.Component {
  render () {

    return (
      <div>
        <h1 className='testing'>Welcome to your dashboard, {this.props.user_name}!</h1>
      </div>
    );
  }
}
