# Generic filters for FMN
import fedmsg

def user_filter(config, message, fasnick=None, *args, **kw):
    """ Filters the messages by the user that performed the action.

    Use this filter to filter out messages that are associated with a
    specified user.
    """

    fasnick = kw.get('fasnick', fasnick)
    if fasnick:
        return fasnick in fedmsg.meta.msg2usernames(message)