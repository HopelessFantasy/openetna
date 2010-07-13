.class public interface abstract Lcom/lge/sns/profile/IProfileFacade;
.super Ljava/lang/Object;
.source "IProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;,
        Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;,
        Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;,
        Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;,
        Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.sns.profile.provider"

.field public static final FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

.field public static final PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

.field public static final PROFILE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "content://com.lge.sns.profile.provider/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/IProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    .line 44
    const-string v0, "content://com.lge.sns.profile.provider/profilecomment"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/IProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    .line 47
    const-string v0, "content://com.lge.sns.profile.provider/friendrequest"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/IProfileFacade;->FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract addFriendRequest(Lcom/lge/sns/profile/FriendRequest;)Landroid/net/Uri;
.end method

.method public abstract addProfile(Lcom/lge/sns/profile/Profile;)Landroid/net/Uri;
.end method

.method public abstract addProfileComment(Lcom/lge/sns/profile/ProfileComment;)Landroid/net/Uri;
.end method

.method public abstract deleteAllFriendRequest(Ljava/lang/String;)I
.end method

.method public abstract deleteAllProfile(Ljava/lang/String;)I
.end method

.method public abstract deleteAllProfileComment(Ljava/lang/String;)I
.end method

.method public abstract deleteAllProfileInContact(Ljava/lang/String;)I
.end method

.method public abstract deleteFriendRequest(J)I
.end method

.method public abstract deleteFriendRequest(Landroid/net/Uri;)I
.end method

.method public abstract deleteProfile(J)I
.end method

.method public abstract deleteProfile(Landroid/net/Uri;)I
.end method

.method public abstract deleteProfileComment(J)I
.end method

.method public abstract deleteProfileComment(Landroid/net/Uri;)I
.end method

.method public abstract getCommentListUpdatedDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract getContactsList(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;I)V
.end method

.method public abstract getDeepLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
.end method

.method public abstract getFollowing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getFollowing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
.end method

.method public abstract getFriendCount(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getFriendList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/Profile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFriendList(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/Profile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/Profile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/Profile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V
.end method

.method public abstract getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V
.end method

.method public abstract getFriendRequest(J)Lcom/lge/sns/profile/FriendRequest;
.end method

.method public abstract getFriendRequest(Landroid/net/Uri;)Lcom/lge/sns/profile/FriendRequest;
.end method

.method public abstract getFriendRequest(Ljava/lang/String;)Lcom/lge/sns/profile/FriendRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getFriendStatusHistory(Ljava/lang/String;IIZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getMergedStatusHistory(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getProfile(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Lcom/lge/sns/profile/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getProfileAvatar(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getProfileAvatarLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProfileComment(J)Lcom/lge/sns/profile/ProfileComment;
.end method

.method public abstract getProfileComment(Landroid/net/Uri;)Lcom/lge/sns/profile/ProfileComment;
.end method

.method public abstract getProfileComment(Ljava/lang/String;)Lcom/lge/sns/profile/ProfileComment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getProfileCommentList(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileComment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProfileCommentList(JLcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileComment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProfileFriendCount(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getProfileFromDB(J)Lcom/lge/sns/profile/Profile;
.end method

.method public abstract getProfileFromDB(JLcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Lcom/lge/sns/profile/Profile;
.end method

.method public abstract getProfileFromDB(Landroid/net/Uri;)Lcom/lge/sns/profile/Profile;
.end method

.method public abstract getProfileFromDB(Landroid/net/Uri;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Lcom/lge/sns/profile/Profile;
.end method

.method public abstract getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
.end method

.method public abstract getProfileFromDB(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Lcom/lge/sns/profile/Profile;
.end method

.method public abstract getProfileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getProfileId(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getProfileStatusHistory(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract insertFromProfileToContact(Landroid/content/Context;Lcom/lge/sns/profile/Profile;)Z
.end method

.method public abstract isExistInContacts(Lcom/lge/sns/profile/ProfileListItem;Ljava/lang/String;)Z
.end method

.method public abstract isExistInFriends(Lcom/lge/sns/profile/Profile;)Z
.end method

.method public abstract isExistInFriends(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract refreshProfile(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract registerProfileCommentUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)V
.end method

.method public abstract registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V
.end method

.method public abstract removeProfileCommentUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)V
.end method

.method public abstract removeProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V
.end method

.method public abstract requestProfileStatusUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract responseFriendsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract sendFriendsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract sendProfileComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract updateFriendList(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract updateProfile(Lcom/lge/sns/profile/Profile;)I
.end method

.method public abstract updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method
