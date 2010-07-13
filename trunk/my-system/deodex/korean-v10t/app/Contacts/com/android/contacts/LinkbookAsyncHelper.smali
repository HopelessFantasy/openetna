.class public Lcom/android/contacts/LinkbookAsyncHelper;
.super Ljava/lang/Object;
.source "LinkbookAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/LinkbookAsyncHelper$ProfileCommentColumns;,
        Lcom/android/contacts/LinkbookAsyncHelper$MediaFileColumns;,
        Lcom/android/contacts/LinkbookAsyncHelper$FriendRequestColumns;,
        Lcom/android/contacts/LinkbookAsyncHelper$FeedColumns;,
        Lcom/android/contacts/LinkbookAsyncHelper$Feed;,
        Lcom/android/contacts/LinkbookAsyncHelper$MessageColumns;,
        Lcom/android/contacts/LinkbookAsyncHelper$ThreadColumns;,
        Lcom/android/contacts/LinkbookAsyncHelper$ProfileColumns;,
        Lcom/android/contacts/LinkbookAsyncHelper$AccountColumns;,
        Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;,
        Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;,
        Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_FRIEND_EMAIL:Ljava/lang/String; = "friend_email"

.field public static final EXTRA_KEY_FRIEND_ID:Ljava/lang/String; = "friends_id"

.field public static final EXTRA_KEY_FRIEND_UID:Ljava/lang/String; = "friend_userid"

.field public static final EXTRA_KEY_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final EXTRA_KEY_RECIPIENT_ID:Ljava/lang/String; = "recipient_id"

.field public static final EXTRA_KEY_SENDER_NAME:Ljava/lang/String; = "sender_name"

.field public static final EXTRA_KEY_SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final EXTRA_KEY_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final EXTRA_KEY_URI:Ljava/lang/String; = "person_uri"

.field public static final EXTRA_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final FEED_VIEW_ACTION:Ljava/lang/String; = "com.lge.sns.feed.intent.action.VIEW_FEED"

.field public static final FEED_WRITE_ACTION:Ljava/lang/String; = "com.lge.sns.feed.intent.action.WRITE_PROFILE_COMMENT"

.field public static final MESSAGELIST_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.messagelist"

.field public static final MESSAGESEND_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.send"

.field public static final MESSAGESEND_TWITTER_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.twitter.send"

.field public static final MESSAGE_BOX_INBOX:I = 0x1

.field public static final MESSAGE_BOX_OUTBOX:I = 0x2

.field public static final MESSAGE_BOX_UNKNOWN:I = 0x0

.field public static final MESSAGE_INBOX_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.inbox"

.field public static final MESSAGE_OUTBOX_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.outbox"

.field public static final MESSAGE_SEND_ACTION:Ljava/lang/String; = "com.lge.sns.message.intent.action.MESSAGE_SEND"

.field public static final SNACCOUNT_VIEW_ACTION:Ljava/lang/String; = "com.lge.sns.account.intent.action.SELECT_MENU"

.field public static final SNFRIENDS_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

.field public static final SNPROFILE_MIMETYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.sns.profile"

.field public static final SNPROFILE_VIEW_ACTION:Ljava/lang/String; = "com.lge.sns.profile.intent.action.VIEW_PROFILE"

.field public static final SNPROFILE_VIEW_TWITTER_ACTION:Ljava/lang/String; = "com.lge.sns.profile.intent.action.VIEW_TWITTER_PROFILE"

.field public static final SN_SITE_ID_TWITTER:Ljava/lang/String; = "TW"

.field public static final THREADLIST_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.threadlist"

.field public static final mSNAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    return-void
.end method

.method public static buildFriendFromIntent(Landroid/content/Intent;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;
    .registers 3
    .parameter "data"

    .prologue
    .line 205
    new-instance v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;

    invoke-direct {v0}, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;-><init>()V

    .line 207
    .local v0, friend:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;
    const-string v1, "sns_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnSiteId:Ljava/lang/String;

    .line 208
    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnUserId:Ljava/lang/String;

    .line 209
    const-string v1, "friend_email"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnsId:Ljava/lang/String;

    .line 210
    const-string v1, "friend_userid"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mUserUid:Ljava/lang/String;

    .line 212
    return-object v0
.end method

.method public static getAccount(Landroid/content/Context;J)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .registers 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 128
    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 129
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    iget-wide v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    move-object v2, v0

    .line 133
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :goto_19
    return-object v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public static getAccount(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .registers 6
    .parameter "context"
    .parameter "snsId"

    .prologue
    const/4 v3, 0x0

    .line 138
    if-nez p1, :cond_5

    move-object v2, v3

    .line 147
    :goto_4
    return-object v2

    .line 142
    :cond_5
    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 143
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    iget-object v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v0

    .line 144
    goto :goto_4

    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :cond_21
    move-object v2, v3

    .line 147
    goto :goto_4
.end method

.method public static getAccountIcon(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 152
    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 153
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    iget-wide v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    .line 154
    iget-object v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 155
    iget-object v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    .line 159
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :goto_1e
    return-object v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public static getAccountIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "context"
    .parameter "snsId"

    .prologue
    .line 164
    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 165
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    iget-object v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 166
    iget-object v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 167
    iget-object v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    .line 171
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :goto_20
    return-object v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public static getAccountTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "snsId"

    .prologue
    .line 176
    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 177
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    iget-object v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 178
    iget-object v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 179
    iget-object v2, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    .line 183
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :goto_20
    return-object v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public static getProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
    .registers 14
    .parameter "context"
    .parameter "snSiteId"
    .parameter "userUid"

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 217
    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    :cond_8
    move-object v0, v5

    .line 248
    :goto_9
    return-object v0

    .line 220
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/LinkbookAsyncHelper$ProfileColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id=? AND user_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    aput-object p2, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 226
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_7d

    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 227
    new-instance v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;

    invoke-direct {v8}, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;-><init>()V

    .line 228
    .local v8, profile:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mId:J

    .line 229
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper$ProfileColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mUri:Landroid/net/Uri;

    .line 230
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mSnSiteId:Ljava/lang/String;

    .line 231
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mUserUid:Ljava/lang/String;

    .line 232
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mSnsId:Ljava/lang/String;

    .line 233
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mUserName:Ljava/lang/String;

    .line 234
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mDisplayName:Ljava/lang/String;

    .line 235
    const/16 v0, 0xb

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mStatus:Ljava/lang/String;

    .line 236
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 237
    .local v7, imageData:[B
    if-eqz v7, :cond_76

    .line 238
    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mImage:Landroid/graphics/Bitmap;
    :try_end_76
    .catchall {:try_start_20 .. :try_end_76} :catchall_84

    .line 244
    :cond_76
    if-eqz v6, :cond_7b

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7b
    move-object v0, v8

    goto :goto_9

    .line 244
    .end local v7           #imageData:[B
    .end local v8           #profile:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
    :cond_7d
    if-eqz v6, :cond_82

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_82
    move-object v0, v5

    .line 248
    goto :goto_9

    .line 244
    :catchall_84
    move-exception v0

    if-eqz v6, :cond_8a

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8a
    throw v0
.end method

.method public static loadAccountList(Landroid/content/Context;)Z
    .registers 13
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 99
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/LinkbookAsyncHelper$AccountColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper$AccountColumns;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 104
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5f

    .line 106
    :cond_18
    :goto_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 107
    const/16 v0, 0xc

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, accountUid:Ljava/lang/String;
    if-eqz v7, :cond_18

    .line 109
    new-instance v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    invoke-direct {v6}, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;-><init>()V

    .line 110
    .local v6, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mId:J

    .line 111
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    .line 112
    const/16 v0, 0x8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnUserId:Ljava/lang/String;

    .line 113
    iput-object v7, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mAccountUid:Ljava/lang/String;

    .line 114
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    .line 115
    const/4 v0, 0x7

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 116
    .local v9, imageData:[B
    array-length v0, v9

    invoke-static {v9, v10, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    .line 117
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 120
    .end local v6           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v7           #accountUid:Ljava/lang/String;
    .end local v9           #imageData:[B
    :cond_5a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 123
    :goto_5e
    return v0

    :cond_5f
    move v0, v10

    goto :goto_5e
.end method

.method public static loadFeeds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 11
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 368
    .local v1, imax:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v6, snMsgWhere:Ljava/lang/StringBuilder;
    if-lez v1, :cond_52

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2d
    if-ge v0, v1, :cond_52

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OR user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 377
    .end local v0           #i:I
    :cond_52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/LinkbookAsyncHelper$ProfileCommentColumns;->CONTENT_URI:Landroid/net/Uri;

    .end local v1           #imax:I
    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper$ProfileCommentColumns;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "published DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 381
    .local p1, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_b7

    .line 383
    :goto_67
    :try_start_67
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 384
    new-instance v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;-><init>()V

    .line 385
    .local v0, entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    .line 386
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 387
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    .line 388
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    .line 389
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    .line 390
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    .line 391
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    .line 392
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    .line 393
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 394
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catchall {:try_start_67 .. :try_end_a0} :catchall_a1

    goto :goto_67

    .line 397
    .end local v0           #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :catchall_a1
    move-exception p0

    .end local p0
    if-eqz p1, :cond_b6

    .line 398
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 399
    const/4 p0, 0x1

    move-object v7, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .local v7, cursor:Landroid/database/Cursor;
    move p1, p0

    move-object p0, v7

    .line 446
    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    :goto_ab
    return p1

    .line 397
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cursor:Landroid/database/Cursor;
    :cond_ac
    if-eqz p1, :cond_b7

    .line 398
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 399
    const/4 p0, 0x1

    move-object v7, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    move p1, p0

    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_ab

    .end local p0           #cursor:Landroid/database/Cursor;
    .restart local p1       #cursor:Landroid/database/Cursor;
    :cond_b6
    throw p0

    .line 405
    .local p0, context:Landroid/content/Context;
    :cond_b7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/LinkbookAsyncHelper$FeedColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper$FeedColumns;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "published DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 409
    if-eqz p1, :cond_165

    .line 411
    :goto_cc
    :try_start_cc
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 412
    new-instance v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;-><init>()V

    .line 413
    .restart local v0       #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    .line 414
    sget-object v1, Lcom/android/contacts/LinkbookAsyncHelper$FeedColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 415
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    .line 416
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    .line 420
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, feedType:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/LinkbookAsyncHelper$Feed;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #feedType:Ljava/lang/String;
    check-cast v1, Ljava/lang/Integer;

    .line 422
    .local v1, textResource:Ljava/lang/Integer;
    if-eqz v1, :cond_14b

    .line 423
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #textResource:Ljava/lang/Integer;
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    .line 428
    :goto_10d
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    .line 429
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 430
    .local v1, opened:Ljava/util/Date;
    if-eqz v1, :cond_155

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .end local v1           #opened:Ljava/util/Date;
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_155

    .line 431
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    .line 435
    :goto_12d
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    .line 436
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.feed.intent.action.VIEW_FEED"

    iget-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 437
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13e
    .catchall {:try_start_cc .. :try_end_13e} :catchall_13f

    goto :goto_cc

    .line 440
    .end local v0           #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :catchall_13f
    move-exception p0

    .end local p0           #context:Landroid/content/Context;
    if-eqz p1, :cond_164

    .line 441
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 442
    const/4 p0, 0x1

    move-object v7, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    move p1, p0

    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto/16 :goto_ab

    .line 425
    .restart local v0       #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    .local v1, textResource:Ljava/lang/Integer;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cursor:Landroid/database/Cursor;
    :cond_14b
    const v1, 0x7f06010a

    :try_start_14e
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v1           #textResource:Ljava/lang/Integer;
    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    goto :goto_10d

    .line 433
    :cond_155
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z
    :try_end_158
    .catchall {:try_start_14e .. :try_end_158} :catchall_13f

    goto :goto_12d

    .line 440
    .end local v0           #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :cond_159
    if-eqz p1, :cond_165

    .line 441
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 442
    const/4 p0, 0x1

    move-object v7, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    move p1, p0

    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto/16 :goto_ab

    .end local p0           #cursor:Landroid/database/Cursor;
    .restart local p1       #cursor:Landroid/database/Cursor;
    :cond_164
    throw p0

    .line 446
    .local p0, context:Landroid/content/Context;
    :cond_165
    const/4 p0, 0x0

    move-object v7, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    move p1, p0

    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto/16 :goto_ab
.end method

.method public static loadMessages(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 11
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;>;"
    const/4 v6, 0x0

    .line 263
    .local v6, bSuccess:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 264
    .local v1, imax:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v7, snMsgWhere:Ljava/lang/StringBuilder;
    if-lez v1, :cond_53

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "author_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2e
    if-ge v0, v1, :cond_53

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OR author_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 273
    .end local v0           #i:I
    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sns_id = \'TW\'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .local p1, subWhere:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6c

    .line 275
    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_6c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/LinkbookAsyncHelper$MessageColumns;->CONTENT_URI:Landroid/net/Uri;

    .end local v1           #imax:I
    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper$MessageColumns;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "10 DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 284
    .local p1, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1da

    .line 286
    :goto_81
    :try_start_81
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 287
    new-instance v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;-><init>()V

    .line 288
    .local v0, entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    .line 289
    sget-object v1, Lcom/android/contacts/LinkbookAsyncHelper$MessageColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 290
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    .line 291
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    .line 292
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    .line 293
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    .line 294
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, unread:Ljava/lang/String;
    if-eqz v1, :cond_111

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #unread:Ljava/lang/String;
    if-eqz v1, :cond_111

    .line 296
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    .line 300
    :goto_c9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 301
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, threadId:Ljava/lang/String;
    if-eqz v1, :cond_115

    const-string v2, "Inbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #threadId:Ljava/lang/String;
    if-eqz v1, :cond_115

    .line 303
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    .line 304
    iget-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v2, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.inbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    :goto_eb
    iget-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v2, "sns_id"

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v2, "message_id"

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_106
    .catchall {:try_start_81 .. :try_end_106} :catchall_108

    goto/16 :goto_81

    .line 314
    .end local v0           #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :catchall_108
    move-exception p0

    move-object p2, p0

    .end local p0
    .end local p2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;>;"
    if-eqz p1, :cond_1e9

    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 316
    const/4 p0, 0x1

    .end local v6           #bSuccess:Z
    .local p0, bSuccess:Z
    :goto_110
    throw p2

    .line 298
    .restart local v0       #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    .restart local v6       #bSuccess:Z
    .local p0, context:Landroid/content/Context;
    .restart local p2       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;>;"
    :cond_111
    const/4 v1, 0x1

    :try_start_112
    iput-boolean v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    goto :goto_c9

    .line 306
    :cond_115
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    .line 307
    iget-object v1, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v2, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.outbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_11f
    .catchall {:try_start_112 .. :try_end_11f} :catchall_108

    goto :goto_eb

    .line 314
    .end local v0           #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :cond_120
    if-eqz p1, :cond_1ec

    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 316
    const/4 p1, 0x1

    .line 324
    .end local v6           #bSuccess:Z
    .local p1, bSuccess:Z
    :goto_126
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "sns_id != \'TW\'"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .local v3, subWhere:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_13f

    .line 326
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_13f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/LinkbookAsyncHelper$ThreadColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper$ThreadColumns;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3           #subWhere:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    const-string v5, "9 DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 333
    .local p0, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_1e5

    .line 335
    .end local p1           #bSuccess:Z
    :goto_154
    :try_start_154
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1dd

    .line 336
    new-instance p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    invoke-direct {p1}, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;-><init>()V

    .line 337
    .local p1, entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    .line 338
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper$ThreadColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 339
    const/4 v0, 0x4

    iput v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    .line 340
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    .line 341
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    .line 342
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    .line 344
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 346
    iget-object v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v1, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.messagelist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v1, "sns_id"

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v1, "thread_id"

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v1, "sender_name"

    iget-object v2, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v0, p1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v1, "recipient_id"

    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d1
    .catchall {:try_start_154 .. :try_end_1d1} :catchall_1d2

    goto :goto_154

    .line 354
    .end local p1           #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :catchall_1d2
    move-exception p1

    if-eqz p0, :cond_1e4

    .line 355
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 356
    const/4 p0, 0x1

    .line 362
    .end local p0           #cursor:Landroid/database/Cursor;
    :goto_1d9
    return p0

    .line 320
    .restart local v6       #bSuccess:Z
    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    :cond_1da
    const/4 p1, 0x0

    .end local v6           #bSuccess:Z
    .local p1, bSuccess:Z
    goto/16 :goto_126

    .line 354
    .end local p1           #bSuccess:Z
    .local p0, cursor:Landroid/database/Cursor;
    :cond_1dd
    if-eqz p0, :cond_1e7

    .line 355
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 356
    const/4 p0, 0x1

    goto :goto_1d9

    :cond_1e4
    throw p1

    .restart local p1       #bSuccess:Z
    :cond_1e5
    move p0, p1

    .line 360
    goto :goto_1d9

    .line 362
    .end local p1           #bSuccess:Z
    :cond_1e7
    const/4 p0, 0x0

    goto :goto_1d9

    .end local p0           #cursor:Landroid/database/Cursor;
    .end local p2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;>;"
    .restart local v6       #bSuccess:Z
    .local p1, cursor:Landroid/database/Cursor;
    :cond_1e9
    move p0, v6

    .end local v6           #bSuccess:Z
    .local p0, bSuccess:Z
    goto/16 :goto_110

    .restart local v6       #bSuccess:Z
    .local p0, context:Landroid/content/Context;
    .restart local p2       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;>;"
    :cond_1ec
    move p1, v6

    .end local v6           #bSuccess:Z
    .local p1, bSuccess:Z
    goto/16 :goto_126
.end method

.method public static manageProfileQuery(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/LinkbookAsyncHelper$AccountColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper$AccountColumns;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static setIntentToPickFriend(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter "snsId"

    .prologue
    const-string v2, "sns_id"

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, intent:Landroid/content/Intent;
    if-nez p0, :cond_7

    .line 190
    const/4 v1, 0x0

    .line 200
    :goto_6
    return-object v1

    .line 192
    :cond_7
    const-string v1, "TW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 193
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.lge.sns.profile.intent.action.PICK_TWITTER_FOLLOWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1b
    move-object v1, v0

    .line 200
    goto :goto_6

    .line 196
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "sns_id"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b
.end method
