.class public Lcom/android/mms/model/VideoModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "VideoModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VideoModel"

.field private static mContentRestriction:Lcom/android/mms/model/ContentRestriction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/model/VideoModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    .registers 11
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .parameter "checkRestriction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 52
    invoke-direct {p0, p2}, Lcom/android/mms/model/VideoModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 53
    invoke-virtual {p0, p4}, Lcom/android/mms/model/VideoModel;->checkContentRestriction(Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .registers 15
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "session"
    .parameter "uri"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v2, "video"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Landroid/lge/lgdrm/DrmContentSession;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .registers 13
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v2, "video"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 59
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .registers 14
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 75
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 77
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_d5

    .line 79
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 80
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VideoModel;->mSrc:Ljava/lang/String;

    .line 82
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 85
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_13 .. :try_end_4d} :catchall_4d

    .line 117
    .end local v10           #path:Ljava/lang/String;
    :catchall_4d
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 89
    .restart local v10       #path:Ljava/lang/String;
    :cond_52
    :try_start_52
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_4d

    move-result v0

    if-eqz v0, :cond_7f

    .line 93
    :cond_66
    :try_start_66
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v11

    .line 94
    .local v11, session:Landroid/lge/lgdrm/DrmContentSession;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v8

    .line 96
    .local v8, content:Landroid/lge/lgdrm/DrmContent;
    if-eqz v11, :cond_75

    .line 97
    iput-object v11, p0, Lcom/android/mms/model/VideoModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 99
    :cond_75
    if-eqz v10, :cond_7a

    .line 100
    invoke-virtual {p0, v10}, Lcom/android/mms/model/VideoModel;->setFileName(Ljava/lang/String;)V

    .line 102
    :cond_7a
    if-eqz v8, :cond_7f

    .line 103
    invoke-virtual {p0, v8}, Lcom/android/mms/model/VideoModel;->setDrmContent(Landroid/lge/lgdrm/DrmContent;)V
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_4d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_66 .. :try_end_7f} :catch_b6

    .line 109
    .end local v8           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v11           #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_7f
    :goto_7f
    :try_start_7f
    const-string v0, "VideoModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New VideoModel created: mSrc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/model/VideoModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_7f .. :try_end_af} :catchall_4d

    .line 117
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 123
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->initMediaDuration()V

    .line 124
    return-void

    .line 104
    :catch_b6
    move-exception v0

    move-object v9, v0

    .line 105
    .local v9, e:Landroid/lge/lgdrm/DrmException;
    :try_start_b8
    invoke-virtual {v9}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_7f

    .line 114
    .end local v9           #e:Landroid/lge/lgdrm/DrmException;
    .end local v10           #path:Ljava/lang/String;
    :cond_bc
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d5
    .catchall {:try_start_b8 .. :try_end_d5} :catchall_4d

    .line 120
    :cond_d5
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected checkContentRestriction(Z)V
    .registers 4
    .parameter "checkType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 161
    :cond_6
    :goto_6
    return-void

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction(Landroid/content/ContentResolver;)Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/VideoModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 159
    if-eqz p1, :cond_6

    .line 160
    sget-object v0, Lcom/android/mms/model/VideoModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    iget-object v1, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkVideoContentType(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getRestriction()Lcom/android/mms/model/ContentRestriction;
    .registers 2

    .prologue
    .line 165
    sget-object v0, Lcom/android/mms/model/VideoModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    if-eqz v0, :cond_7

    .line 166
    sget-object v0, Lcom/android/mms/model/VideoModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 168
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .registers 9
    .parameter "evt"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 128
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, evtType:Ljava/lang/String;
    const-string v2, "VideoModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 132
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 133
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 134
    iput-boolean v5, p0, Lcom/android/mms/model/VideoModel;->mVisible:Z

    .line 149
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v0}, Lcom/android/mms/model/VideoModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 150
    invoke-virtual {p0, v6}, Lcom/android/mms/model/VideoModel;->notifyModelChanged(Z)V

    .line 151
    return-void

    .line 135
    :cond_41
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 136
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 137
    iget-short v2, p0, Lcom/android/mms/model/VideoModel;->mFill:S

    if-eq v2, v5, :cond_3a

    .line 138
    iput-boolean v6, p0, Lcom/android/mms/model/VideoModel;->mVisible:Z

    goto :goto_3a

    .line 140
    :cond_52
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 141
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 142
    iput-boolean v5, p0, Lcom/android/mms/model/VideoModel;->mVisible:Z

    goto :goto_3a

    .line 143
    :cond_5f
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 144
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 145
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/VideoModel;->mSeekTo:I

    .line 146
    iput-boolean v5, p0, Lcom/android/mms/model/VideoModel;->mVisible:Z

    goto :goto_3a
.end method

.method protected isPlayable()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
