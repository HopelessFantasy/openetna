.class public interface abstract Lcom/lge/sns/account/IAccountFacade;
.super Ljava/lang/Object;
.source "IAccountFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/account/IAccountFacade$AccountListener;
    }
.end annotation


# static fields
.field public static final AUTHENTICATE:Ljava/lang/String; = "authenticate"

.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.sns.account"

.field public static final CONTENT_FEATURE_PATH:Ljava/lang/String; = "feature"

.field public static final CONTENT_FEATURE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_PATH:Ljava/lang/String; = "account"

.field public static final CONTENT_RESTRICTION_PATH:Ljava/lang/String; = "restriction"

.field public static final CONTENT_RESTRICTION_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FRIENDS_GET_ALL:Ljava/lang/String; = "friends.get.all"

.field public static final FRIENDS_GET_FRIEND:Ljava/lang/String; = "friends.get.friend"

.field public static final FRIENDS_GET_OWN:Ljava/lang/String; = "friends.get.own"

.field public static final FRIEND_REQUESTS_GET_ALL:Ljava/lang/String; = "friend.requests.get.all"

.field public static final FRIEND_REQUESTS_GET_INDIVIDUAL:Ljava/lang/String; = "friend.requests.get.individual"

.field public static final FRIEND_REQUESTS_GET_SUMMARY:Ljava/lang/String; = "friend.request.get.summary"

.field public static final FRIEND_REQUESTS_INDIVIDUAL_ACCEPT:Ljava/lang/String; = "friend.requests.individual.accept"

.field public static final FRIEND_REQUESTS_INDIVIDUAL_REJECT:Ljava/lang/String; = "friend_requests.individual.reject"

.field public static final FRIEND_REQUESTS_POST:Ljava/lang/String; = "friend.requests.post"

.field public static final IMAGE_COMMENTS_DELETE:Ljava/lang/String; = "image.comments.delete"

.field public static final IMAGE_COMMENTS_GET_ALL:Ljava/lang/String; = "image.comments.get.all"

.field public static final IMAGE_COMMENTS_GET_INDIVIDUAL:Ljava/lang/String; = "image.comments.get.individual"

.field public static final IMAGE_COMMENTS_POST:Ljava/lang/String; = "image.comments.post"

.field public static final IMAGE_DELETE:Ljava/lang/String; = "image.delete"

.field public static final IMAGE_FOLDER_GET:Ljava/lang/String; = "image.folder.get"

.field public static final IMAGE_FOLDER_METADATA_SHARING_SET:Ljava/lang/String; = "image.folder.medata.sharing.set"

.field public static final IMAGE_FOLDER_ROOT_GET:Ljava/lang/String; = "image.folder.root.get"

.field public static final IMAGE_GET_INDIVIDUAL:Ljava/lang/String; = "image.get.individual"

.field public static final IMAGE_METADATA_DESCRIPTION_SET:Ljava/lang/String; = "image.metadata.description.set"

.field public static final IMAGE_METADATA_DESCRIPTION_UPLOAD:Ljava/lang/String; = "image.metadata.description.upload"

.field public static final IMAGE_METADATA_LOCATION_SET:Ljava/lang/String; = "image.metadata.location.set"

.field public static final IMAGE_METADATA_LOCATION_UPLOAD:Ljava/lang/String; = "image.metadata.location.upload"

.field public static final IMAGE_METADATA_SHARING_SET:Ljava/lang/String; = "image.metadata.sharing.set"

.field public static final IMAGE_METADATA_SHARING_UPLOAD:Ljava/lang/String; = "image.metadata.sharing.upload"

.field public static final IMAGE_METADATA_TAGS_ADD:Ljava/lang/String; = "image.metadata.tags.add"

.field public static final IMAGE_METADATA_TAGS_DELETE:Ljava/lang/String; = "image.metadata.tags.delete"

.field public static final IMAGE_METADATA_TAGS_UPLOAD:Ljava/lang/String; = "image.metadata.tags.upload"

.field public static final IMAGE_METADATA_TITLE_SET:Ljava/lang/String; = "image.metadata.title.set"

.field public static final IMAGE_METADATA_TITLE_UPLOAD:Ljava/lang/String; = "iamge.metadata.title.upload"

.field public static final IMAGE_MIMETYPE:Ljava/lang/String; = "image.mimetype"

.field public static final IMAGE_SIZE_MAX:Ljava/lang/String; = "image.size.max"

.field public static final IMAGE_UPLOAD_FOLDER:Ljava/lang/String; = "image.upload.folder"

.field public static final IMAGE_UPLOAD_FOLDER_DEFAULT:Ljava/lang/String; = "image.upload.folder.default"

.field public static final IMG_MIMETYPE:Ljava/lang/String; = "image.mimetype"

.field public static final IMG_SIZE:Ljava/lang/String; = "image.size.max"

.field public static final LOGIN:Z = true

.field public static final LOGOUT:Z = false

.field public static final MEDIA_FOLDERS_GET_ALL:Ljava/lang/String; = "media.folders.get.all"

.field public static final MEDIA_ITEMS_GET_ALL:Ljava/lang/String; = "media.items.get.all"

.field public static final MESSAGES_GET_ALL:Ljava/lang/String; = "messages.get.all"

.field public static final MESSAGES_GET_INDIVIDUAL:Ljava/lang/String; = "messages.get.individual"

.field public static final MESSAGES_GET_SUMMARY:Ljava/lang/String; = "messages.get.summary"

.field public static final MESSAGES_POST:Ljava/lang/String; = "messages.post"

.field public static final MESSAGES_REPLY:Ljava/lang/String; = "mesages.reply"

.field public static final MINIFEED:Ljava/lang/String; = "minifeed"

.field public static final PROFILE_COMMENTS_GET_ALL:Ljava/lang/String; = "profile.comments.get.all"

.field public static final PROFILE_COMMENTS_GET_INDIVIDUAL:Ljava/lang/String; = "profile.comments.get.individual"

.field public static final PROFILE_COMMENTS_GET_SUMMARY:Ljava/lang/String; = "profile.comments.get.summary"

.field public static final PROFILE_COMMENTS_POST:Ljava/lang/String; = "profile.comments.post"

.field public static final PROFILE_GET_FRIEND:Ljava/lang/String; = "profile.get.friend"

.field public static final PROFILE_GET_OWN:Ljava/lang/String; = "profile.get.own"

.field public static final STATUS_SIZE:Ljava/lang/String; = "status.updates.length.max"

.field public static final STATUS_UPDATES_GET_ALL:Ljava/lang/String; = "status.updates.get.all"

.field public static final STATUS_UPDATES_GET_INDIVIDUAL:Ljava/lang/String; = "status.updates.get.individual"

.field public static final STATUS_UPDATES_POST:Ljava/lang/String; = "status.updates.post"

.field public static final USERS_SEARCH:Ljava/lang/String; = "users.search"

.field public static final VDO_MIMETYPE:Ljava/lang/String; = "video.mimetype"

.field public static final VDO_SIZE:Ljava/lang/String; = "video.size.max"

.field public static final VIDEO_COMMENTS_DELETE:Ljava/lang/String; = "video.comments.delete"

.field public static final VIDEO_COMMENTS_GET_ALL:Ljava/lang/String; = "video.comments.get.all"

.field public static final VIDEO_COMMENTS_GET_INDIVIDUAL:Ljava/lang/String; = "video.comments.get.individual"

.field public static final VIDEO_COMMENTS_POST:Ljava/lang/String; = "video.comments.post"

.field public static final VIDEO_FOLDER_GET:Ljava/lang/String; = "video.folder.get"

.field public static final VIDEO_FOLDER_METADATA_SHARING_SET:Ljava/lang/String; = "video.folder.metadata.sharing.set"

.field public static final VIDEO_FOLDER_ROOT_GET:Ljava/lang/String; = "video.folder.root.get"

.field public static final VIDEO_GET_INDEIVIUAL:Ljava/lang/String; = "video.get.individual"

.field public static final VIDEO_METADATA_DESCRIPTION_SET:Ljava/lang/String; = "video.metadata.description.set"

.field public static final VIDEO_METADATA_DESCRIPTION_UPLOAD:Ljava/lang/String; = "video.metadata.description.upload"

.field public static final VIDEO_METADATA_LOCATION_SET:Ljava/lang/String; = "video.metadata.location.set"

.field public static final VIDEO_METADATA_LOCATION_UPLOAD:Ljava/lang/String; = "video.metadata.location.upload"

.field public static final VIDEO_METADATA_SHARING_SET:Ljava/lang/String; = "video.metadata.sharing.set"

.field public static final VIDEO_METADATA_SHARING_UPLOAD:Ljava/lang/String; = "video.metadata.sharing.upload"

.field public static final VIDEO_METADATA_TAGS_ADD:Ljava/lang/String; = "video.metadata.tags.add"

.field public static final VIDEO_METADATA_TAGS_DELETE:Ljava/lang/String; = "video.metadata.tags.delete"

.field public static final VIDEO_METADATA_TAGS_UPLOAD:Ljava/lang/String; = "video.metadata.tags.upload"

.field public static final VIDEO_METADATA_TITLE_SET:Ljava/lang/String; = "video.metadata.title.set"

.field public static final VIDEO_METADATA_TITLE_UPLOAD:Ljava/lang/String; = "video.metadata.title.upload"

.field public static final VIDEO_UPLOAD_FOLDER:Ljava/lang/String; = "video.upload.folder"

.field public static final VIDEO_UPLOAD_FOLDER_DEFAULT:Ljava/lang/String; = "video.upload.folder.default"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "content://com.lge.sns.account/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/account/IAccountFacade;->CONTENT_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://com.lge.sns.account/feature"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/account/IAccountFacade;->CONTENT_FEATURE_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "content://com.lge.sns.account/restriction"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/account/IAccountFacade;->CONTENT_RESTRICTION_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract addAccount(Lcom/lge/sns/account/Account;)V
.end method

.method public abstract addAccountListener(Lcom/lge/sns/account/IAccountFacade$AccountListener;)V
.end method

.method public abstract checkAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation
.end method

.method public abstract getAccount(Landroid/net/Uri;)Lcom/lge/sns/account/Account;
.end method

.method public abstract getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;
.end method

.method public abstract getAccountList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccountList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCredential(Ljava/lang/String;)Lcom/lge/sns/account/Credential;
.end method

.method public abstract getFeedUpdatedDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract getFixedAccountList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFriendListUpdatedDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract getMaxSize(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getMimeTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNewAccountList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation
.end method

.method public abstract getUid(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isNotify(Ljava/lang/String;)Z
.end method

.method public abstract isSupported(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract removeAccountList(Ljava/lang/String;)V
.end method

.method public abstract removeAccountListener(Lcom/lge/sns/account/IAccountFacade$AccountListener;)V
.end method

.method public abstract saveCredential(Ljava/lang/String;Lcom/lge/sns/account/Credential;)I
.end method

.method public abstract saveNotify(Ljava/lang/String;Z)I
.end method

.method public abstract setFeedUpdatedDate(Ljava/lang/String;Ljava/util/Date;)Z
.end method

.method public abstract setFriendListUpdatedDate(Ljava/lang/String;Ljava/util/Date;)Z
.end method

.method public abstract setStatus(Ljava/lang/String;Z)V
.end method
