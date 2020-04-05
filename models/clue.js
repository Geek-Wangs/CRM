const Base = require('./base.js');
const Knex = require('./knex.js');

class  Clue extends Base {
  constructor(props = 'clue') {
    super(props);
  }

  joinUser(params = {}){
    return Knex('clue').where(params)
    // .join('user','clue.user_id','=','user.id')
    .select(
      // 'clue.id',
      // 'clue.name',
      // 'clue.phone',
      // 'clue.utm',
      // 'clue.status',
      // 'clue.created_time',
      // {'sales_name':'user.name'},
    )
  }
}

module.exports = new Clue();