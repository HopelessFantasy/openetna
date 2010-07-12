.class public final Landroid/provider/Downloads;
.super Ljava/lang/Object;
.source "Downloads.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final APP_DATA:Ljava/lang/String; = "entity"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTROL:Ljava/lang/String; = "control"

.field public static final CONTROL_PAUSED:I = 0x1

.field public static final CONTROL_RUN:I = 0x0

.field public static final COOKIE_DATA:Ljava/lang/String; = "cookiedata"

.field public static final CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DESTINATION:Ljava/lang/String; = "destination"

.field public static final DESTINATION_CACHE_PARTITION:I = 0x1

.field public static final DESTINATION_CACHE_PARTITION_NOROAMING:I = 0x3

.field public static final DESTINATION_CACHE_PARTITION_PURGEABLE:I = 0x2

.field public static final DESTINATION_EXTERNAL:I = 0x0

.field public static final DOWNLOAD_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"

.field public static final EXTERNAL_CONTROL:Ljava/lang/String; = "external_control"

.field public static final FILENAME_HINT:Ljava/lang/String; = "hint"

.field public static final LAST_MODIFICATION:Ljava/lang/String; = "lastmod"

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final NOTIFICATION_CLASS:Ljava/lang/String; = "notificationclass"

.field public static final NOTIFICATION_CLICKED_ACTION:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final NOTIFICATION_EXTRAS:Ljava/lang/String; = "notificationextras"

.field public static final NOTIFICATION_PACKAGE:Ljava/lang/String; = "notificationpackage"

.field public static final NO_INTEGRITY:Ljava/lang/String; = "no_integrity"

.field public static final OTHER_UID:Ljava/lang/String; = "otheruid"

.field public static final PERMISSION_ACCESS:Ljava/lang/String; = "android.permission.ACCESS_DOWNLOAD_MANAGER"

.field public static final PERMISSION_ACCESS_ADVANCED:Ljava/lang/String; = "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

.field public static final PERMISSION_CACHE:Ljava/lang/String; = "android.permission.ACCESS_CACHE_FILESYSTEM"

.field public static final PERMISSION_SEND_INTENTS:Ljava/lang/String; = "android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS"

.field public static final REFERER:Ljava/lang/String; = "referer"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_DRM_NO_RIGHTS:I = 0x122

.field public static final STATUS_DRM_WAIT_RIGHTS:I = 0x123

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_PENDING_PAUSED:I = 0xbf

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_RUNNING_PAUSED:I = 0xc1

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final URI:Ljava/lang/String; = "uri"

.field public static final USER_AGENT:Ljava/lang/String; = "useragent"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "content://downloads/download"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStatusClientError(I)Z
    .registers 2
    .parameter "status"

    .prologue
    .line 382
    const/16 v0, 0x190

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStatusCompleted(I)Z
    .registers 2
    .parameter "status"

    .prologue
    .line 397
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_8

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x190

    if-lt p0, v0, :cond_12

    const/16 v0, 0x258

    if-ge p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isStatusError(I)Z
    .registers 2
    .parameter "status"

    .prologue
    .line 375
    const/16 v0, 0x190

    if-lt p0, v0, :cond_a

    const/16 v0, 0x258

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStatusInformational(I)Z
    .registers 2
    .parameter "status"

    .prologue
    .line 352
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStatusServerError(I)Z
    .registers 2
    .parameter "status"

    .prologue
    .line 389
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_a

    const/16 v0, 0x258

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStatusSuccess(I)Z
    .registers 2
    .parameter "status"

    .prologue
    .line 368
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStatusSuspended(I)Z
    .registers 2
    .parameter "status"

    .prologue
    .line 361
    const/16 v0, 0xbf

    if-eq p0, v0, :cond_8

    const/16 v0, 0xc1

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
