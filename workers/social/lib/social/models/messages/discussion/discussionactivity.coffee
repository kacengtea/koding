CActivity = require '../../activity'

module.exports = class CDiscussionActivity extends CActivity

  @share()

  @set
    slugifyFrom     : 'title'
    encapsulatedBy  : CActivity
    sharedMethods   : CActivity.sharedMethods
    schema          : CActivity.schema
    relationships   :
      subject       :
        targetType  : "JDiscussion"
        as          : 'content'