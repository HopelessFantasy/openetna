.class public abstract Landroid/content/ContentResolver;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentResolver$ParcelFileDescriptorInner;,
        Landroid/content/ContentResolver$CursorWrapperInner;,
        Landroid/content/ContentResolver$OpenResourceIdResult;
    }
.end annotation


# static fields
.field public static final CONTENT_SERVICE_NAME:Ljava/lang/String; = "content"

.field public static final CURSOR_DIR_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final CURSOR_ITEM_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item"

.field public static final SCHEME_ANDROID_RESOURCE:Ljava/lang/String; = "android.resource"

.field public static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field public static final SCHEME_FILE:Ljava/lang/String; = "file"

.field public static final SYNC_EXTRAS_ACCOUNT:Ljava/lang/String; = "account"

.field public static final SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS:Ljava/lang/String; = "discard_deletions"

.field public static final SYNC_EXTRAS_EXPEDITED:Ljava/lang/String; = "expedited"

.field public static final SYNC_EXTRAS_FORCE:Ljava/lang/String; = "force"

.field public static final SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS:Ljava/lang/String; = "deletions_override"

.field public static final SYNC_EXTRAS_UPLOAD:Ljava/lang/String; = "upload"

.field private static final TAG:Ljava/lang/String; = "ContentResolver"

.field private static sContentService:Landroid/content/IContentService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public static getContentService()Landroid/content/IContentService;
    .registers 2

    .prologue
    .line 790
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    if-eqz v1, :cond_7

    .line 791
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    .line 797
    :goto_6
    return-object v1

    .line 793
    :cond_7
    const-string v1, "content"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 795
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IContentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;

    move-result-object v1

    sput-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    .line 797
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    goto :goto_6
.end method

.method public static modeToMode(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 438
    const-string v1, "r"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 439
    const/high16 v0, 0x1000

    .line 459
    .local v0, modeBits:I
    :goto_a
    return v0

    .line 440
    .end local v0           #modeBits:I
    :cond_b
    const-string v1, "w"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "wt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 441
    :cond_1b
    const/high16 v0, 0x2c00

    .restart local v0       #modeBits:I
    goto :goto_a

    .line 444
    .end local v0           #modeBits:I
    :cond_1e
    const-string v1, "wa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 445
    const/high16 v0, 0x2a00

    .restart local v0       #modeBits:I
    goto :goto_a

    .line 448
    .end local v0           #modeBits:I
    :cond_29
    const-string v1, "rw"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 449
    const/high16 v0, 0x3800

    .restart local v0       #modeBits:I
    goto :goto_a

    .line 451
    .end local v0           #modeBits:I
    :cond_34
    const-string v1, "rwt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 452
    const/high16 v0, 0x3c00

    .restart local v0       #modeBits:I
    goto :goto_a

    .line 456
    .end local v0           #modeBits:I
    :cond_3f
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static validateSyncExtrasBundle(Landroid/os/Bundle;)V
    .registers 9
    .parameter "extras"

    .prologue
    .line 703
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 704
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 705
    .local v4, value:Ljava/lang/Object;
    if-eqz v4, :cond_8

    .line 706
    instance-of v5, v4, Ljava/lang/Long;

    if-nez v5, :cond_8

    .line 707
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_8

    .line 708
    instance-of v5, v4, Ljava/lang/Boolean;

    if-nez v5, :cond_8

    .line 709
    instance-of v5, v4, Ljava/lang/Float;

    if-nez v5, :cond_8

    .line 710
    instance-of v5, v4, Ljava/lang/Double;

    if-nez v5, :cond_8

    .line 711
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_8

    .line 712
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected value type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_53} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_53} :catch_56

    .line 715
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :catch_53
    move-exception v5

    move-object v0, v5

    .line 716
    .local v0, e:Ljava/lang/IllegalArgumentException;
    throw v0

    .line 717
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_56
    move-exception v5

    move-object v1, v5

    .line 718
    .local v1, exc:Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "error unparceling Bundle"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 720
    .end local v1           #exc:Ljava/lang/RuntimeException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_60
    return-void
.end method


# virtual methods
.method protected abstract acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 574
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    move-object v1, v3

    .line 581
    :goto_e
    return-object v1

    .line 577
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, auth:Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 579
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    goto :goto_e

    :cond_20
    move-object v1, v3

    .line 581
    goto :goto_e
.end method

.method public final acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 3
    .parameter "name"

    .prologue
    .line 588
    if-nez p1, :cond_4

    .line 589
    const/4 v0, 0x0

    .line 591
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_3
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 8
    .parameter "url"
    .parameter "values"

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 500
    .local v1, provider:Landroid/content/IContentProvider;
    if-nez v1, :cond_1f

    .line 501
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_1f
    :try_start_1f
    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_27

    move-result v2

    .line 508
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :goto_26
    return v2

    .line 505
    :catch_27
    move-exception v0

    .line 506
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 508
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_26

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2d
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v2
.end method

.method public cancelSync(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 724
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/IContentService;->cancelSync(Landroid/net/Uri;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 727
    :goto_7
    return-void

    .line 725
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "url"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 525
    .local v1, provider:Landroid/content/IContentProvider;
    if-nez v1, :cond_1f

    .line 526
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :cond_1f
    :try_start_1f
    invoke-interface {v1, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_27

    move-result v2

    .line 533
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :goto_26
    return v2

    .line 530
    :catch_27
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, -0x1

    .line 533
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_26

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2d
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v2
.end method

.method getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    .registers 13
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, authority:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 401
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 404
    :cond_25
    :try_start_25
    iget-object v8, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_2e} :catch_4e

    move-result-object v6

    .line 409
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 410
    .local v5, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_69

    .line 411
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 405
    .end local v5           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #r:Landroid/content/res/Resources;
    :catch_4e
    move-exception v8

    move-object v2, v8

    .line 406
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No package found for authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 413
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #r:Landroid/content/res/Resources;
    :cond_69
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 415
    .local v4, len:I
    if-ne v4, v10, :cond_b0

    .line 417
    const/4 v8, 0x0

    :try_start_70
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_79} :catch_95

    move-result v3

    .line 426
    .local v3, id:I
    :goto_7a
    if-nez v3, :cond_dd

    .line 427
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No resource found for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 418
    .end local v3           #id:I
    :catch_95
    move-exception v8

    move-object v1, v8

    .line 419
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Single path segment is not a resource ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 421
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_b0
    const/4 v8, 0x2

    if-ne v4, v8, :cond_c4

    .line 422
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3       #id:I
    goto :goto_7a

    .line 424
    .end local v3           #id:I
    :cond_c4
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More than two path segments: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 429
    .restart local v3       #id:I
    :cond_dd
    new-instance v7, Landroid/content/ContentResolver$OpenResourceIdResult;

    invoke-direct {v7, p0}, Landroid/content/ContentResolver$OpenResourceIdResult;-><init>(Landroid/content/ContentResolver;)V

    .line 430
    .local v7, res:Landroid/content/ContentResolver$OpenResourceIdResult;
    iput-object v6, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    .line 431
    iput v3, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    .line 432
    return-object v7
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 111
    .local v1, provider:Landroid/content/IContentProvider;
    if-nez v1, :cond_8

    .line 121
    :goto_7
    return-object v2

    .line 115
    :cond_8
    :try_start_8
    invoke-interface {v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_15

    move-result-object v2

    .line 121
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_7

    .line 116
    :catch_10
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_7

    .line 118
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_15
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_7

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1a
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v2
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8
    .parameter "url"
    .parameter "values"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 475
    .local v1, provider:Landroid/content/IContentProvider;
    if-nez v1, :cond_1f

    .line 476
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 479
    :cond_1f
    :try_start_1f
    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_27

    move-result-object v2

    .line 483
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :goto_26
    return-object v2

    .line 480
    :catch_27
    move-exception v0

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 483
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_26

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2d
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v2
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .registers 4
    .parameter "uri"
    .parameter "observer"

    .prologue
    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 644
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .registers 7
    .parameter "uri"
    .parameter "observer"
    .parameter "syncToNetwork"

    .prologue
    .line 657
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    if-nez p2, :cond_14

    const/4 v1, 0x0

    :goto_7
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_10
    invoke-interface {v0, p1, v1, v2, p3}, Landroid/content/IContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V

    .line 662
    :goto_13
    return-void

    .line 657
    :cond_14
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_1b

    move-result-object v1

    goto :goto_7

    :cond_19
    const/4 v2, 0x0

    goto :goto_10

    .line 660
    :catch_1b
    move-exception v0

    goto :goto_13
.end method

.method public final openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 15
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 350
    .local v11, scheme:Ljava/lang/String;
    const-string v0, "android.resource"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 351
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 352
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_2d
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v10

    .line 356
    .local v10, r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_31
    iget-object v0, v10, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v2, v10, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_38} :catch_3a

    move-result-object v0

    .line 377
    .end local v10           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :goto_39
    return-object v0

    .line 357
    .restart local v10       #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :catch_3a
    move-exception v0

    move-object v7, v0

    .line 358
    .local v7, ex:Landroid/content/res/Resources$NotFoundException;
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    .end local v7           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v10           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_55
    const-string v0, "file"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 361
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/content/ContentResolver;->modeToMode(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 363
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_39

    .line 365
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_78
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v9

    .line 366
    .local v9, provider:Landroid/content/IContentProvider;
    if-nez v9, :cond_97

    .line 367
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_97
    :try_start_97
    invoke-interface {v9, p1, p2}, Landroid/content/IContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 371
    .local v8, fd:Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_a2

    .line 372
    invoke-virtual {p0, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 373
    const/4 v0, 0x0

    goto :goto_39

    .line 375
    :cond_a2
    new-instance v1, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v1, p0, v0, v9}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    .line 377
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_b8} :catch_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_b8} :catch_d7
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_b8} :catch_dd

    goto :goto_39

    .line 379
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_b9
    move-exception v0

    move-object v6, v0

    .line 380
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 381
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead content provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_d7
    move-exception v0

    move-object v6, v0

    .line 383
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 384
    throw v6

    .line 385
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_dd
    move-exception v0

    move-object v6, v0

    .line 386
    .local v6, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 387
    throw v6
.end method

.method public final openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 284
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_8

    .line 285
    const/4 v1, 0x0

    .line 290
    :goto_7
    return-object v1

    .line 288
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_17

    .line 290
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_7

    .line 296
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_22

    .line 300
    :goto_1a
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Not a whole file"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :catch_22
    move-exception v1

    goto :goto_1a
.end method

.method public final openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 11
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "android.resource"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 193
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v3

    .line 195
    .local v3, r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_10
    iget-object v6, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_17} :catch_1a

    move-result-object v5

    .local v5, stream:Ljava/io/InputStream;
    move-object v6, v5

    .line 207
    .end local v3           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v5           #stream:Ljava/io/InputStream;
    :goto_19
    return-object v6

    .line 197
    .restart local v3       #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :catch_1a
    move-exception v6

    move-object v1, v6

    .line 198
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    .end local v1           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v3           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_35
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 203
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_19

    .line 205
    :cond_47
    const-string v6, "r"

    invoke-virtual {p0, p1, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 207
    .local v2, fd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v2, :cond_54

    :try_start_4f
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_56

    move-result-object v6

    goto :goto_19

    :cond_54
    const/4 v6, 0x0

    goto :goto_19

    .line 208
    :catch_56
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Ljava/io/FileNotFoundException;

    const-string v7, "Unable to create stream"

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public final openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .registers 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    const-string v0, "w"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 7
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 247
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_b

    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_d

    move-result-object v2

    :goto_a
    return-object v2

    :cond_b
    const/4 v2, 0x0

    goto :goto_a

    .line 248
    :catch_d
    move-exception v0

    .line 249
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Unable to create stream"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v8, 0x0

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 148
    .local v0, provider:Landroid/content/IContentProvider;
    if-nez v0, :cond_9

    move-object v1, v8

    .line 161
    :goto_8
    return-object v1

    :cond_9
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 152
    :try_start_e
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    .local v7, qCursor:Landroid/database/Cursor;
    if-nez v7, :cond_19

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v1, v8

    .line 155
    goto :goto_8

    .line 158
    :cond_19
    new-instance v1, Landroid/content/ContentResolver$CursorWrapperInner;

    invoke-direct {v1, p0, v7, v0}, Landroid/content/ContentResolver$CursorWrapperInner;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1e} :catch_26

    goto :goto_8

    .line 159
    .end local v7           #qCursor:Landroid/database/Cursor;
    :catch_1f
    move-exception v1

    move-object v6, v1

    .line 160
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v1, v8

    .line 161
    goto :goto_8

    .line 162
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_26
    move-exception v1

    move-object v6, v1

    .line 163
    .local v6, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 164
    throw v6
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .registers 6
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    .line 611
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-virtual {p3}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/IContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 615
    :goto_b
    return-void

    .line 613
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public abstract releaseProvider(Landroid/content/IContentProvider;)Z
.end method

.method public startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4
    .parameter "uri"
    .parameter "extras"

    .prologue
    .line 681
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 683
    :try_start_3
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/IContentService;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 686
    :goto_a
    return-void

    .line 684
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 4
    .parameter "observer"

    .prologue
    .line 625
    :try_start_0
    invoke-virtual {p1}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    .line 626
    .local v0, contentObserver:Landroid/database/IContentObserver;
    if-eqz v0, :cond_d

    .line 627
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 632
    .end local v0           #contentObserver:Landroid/database/IContentObserver;
    :cond_d
    :goto_d
    return-void

    .line 630
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 553
    .local v1, provider:Landroid/content/IContentProvider;
    if-nez v1, :cond_1f

    .line 554
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_1f
    :try_start_1f
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_27

    move-result v2

    .line 561
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :goto_26
    return v2

    .line 558
    :catch_27
    move-exception v0

    .line 559
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, -0x1

    .line 561
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_26

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2d
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v2
.end method
