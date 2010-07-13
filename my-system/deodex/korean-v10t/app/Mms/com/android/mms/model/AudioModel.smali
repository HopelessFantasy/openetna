.class public Lcom/android/mms/model/AudioModel;
.super Lcom/android/mms/model/MediaModel;
.source "AudioModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioModel"

.field private static mContentRestriction:Lcom/android/mms/model/ContentRestriction;


# instance fields
.field private final mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/model/AudioModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .registers 5
    .parameter "context"
    .parameter "uri"
    .parameter "checkRestriction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    invoke-direct {p0, p2}, Lcom/android/mms/model/AudioModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 57
    invoke-virtual {p0, p3}, Lcom/android/mms/model/AudioModel;->checkContentRestriction(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;)V
    .registers 13
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "session"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 74
    const-string v2, "audio"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/lge/lgdrm/DrmContentSession;)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 11
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v2, "audio"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .registers 19
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 80
    .local v3, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mContext:Landroid/content/Context;

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 82
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_16a

    .line 84
    :try_start_1a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_14e

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/AudioModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v14

    .line 91
    .local v14, isFromMms:Z
    if-eqz v14, :cond_68

    .line 92
    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, path:Ljava/lang/String;
    const-string v2, "ct"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    .line 110
    .end local v3           #cr:Landroid/content/ContentResolver;
    :cond_3f
    :goto_3f
    const/16 v2, 0x2f

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/AudioModel;->mSrc:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 113
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Type of media is unknown."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_63
    .catchall {:try_start_1a .. :try_end_63} :catchall_63

    .line 146
    .end local v14           #isFromMms:Z
    .end local v15           #path:Ljava/lang/String;
    :catchall_63
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 95
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v14       #isFromMms:Z
    :cond_68
    :try_start_68
    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 96
    .restart local v15       #path:Ljava/lang/String;
    const-string v2, "mime_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    .line 100
    const-string v2, "album"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, album:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    move-object v2, v0

    const-string v3, "album"

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_9b
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, artist:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    move-object v2, v0

    const-string v3, "artist"

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 117
    .end local v9           #album:Ljava/lang/String;
    .end local v10           #artist:Ljava/lang/String;
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    const-string v3, "application/vnd.oma.drm.content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    const-string v3, "application/vnd.oma.drm.dcf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_cd
    .catchall {:try_start_68 .. :try_end_cd} :catchall_63

    move-result v2

    if-eqz v2, :cond_f9

    .line 121
    :cond_d0
    :try_start_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-static {v15, v2}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v16

    .line 122
    .local v16, session:Landroid/lge/lgdrm/DrmContentSession;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v12

    .line 124
    .local v12, content:Landroid/lge/lgdrm/DrmContent;
    if-eqz v16, :cond_e9

    .line 125
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/AudioModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 127
    :cond_e9
    if-eqz v15, :cond_f1

    .line 128
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/model/AudioModel;->setFileName(Ljava/lang/String;)V

    .line 130
    :cond_f1
    if-eqz v12, :cond_f9

    .line 131
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/mms/model/AudioModel;->setDrmContent(Landroid/lge/lgdrm/DrmContent;)V
    :try_end_f9
    .catchall {:try_start_d0 .. :try_end_f9} :catchall_63
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_d0 .. :try_end_f9} :catch_148

    .line 137
    .end local v12           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v16           #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_f9
    :goto_f9
    :try_start_f9
    const-string v2, "AudioModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New AudioModel created: mSrc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mSrc:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mContentType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mExtras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_f9 .. :try_end_141} :catchall_63

    .line 146
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/AudioModel;->initMediaDuration()V

    .line 153
    return-void

    .line 132
    :catch_148
    move-exception v2

    move-object v13, v2

    .line 133
    .local v13, e:Landroid/lge/lgdrm/DrmException;
    :try_start_14a
    invoke-virtual {v13}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_f9

    .line 143
    .end local v13           #e:Landroid/lge/lgdrm/DrmException;
    .end local v14           #isFromMms:Z
    .end local v15           #path:Ljava/lang/String;
    .restart local v3       #cr:Landroid/content/ContentResolver;
    :cond_14e
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_16a
    .catchall {:try_start_14a .. :try_end_16a} :catchall_63

    .line 149
    .restart local v3       #cr:Landroid/content/ContentResolver;
    :cond_16a
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 185
    invoke-virtual {p0}, Lcom/android/mms/model/AudioModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 192
    :cond_6
    :goto_6
    return-void

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction(Landroid/content/ContentResolver;)Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/AudioModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 190
    if-eqz p1, :cond_6

    .line 191
    sget-object v0, Lcom/android/mms/model/AudioModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    iget-object v1, p0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRestriction()Lcom/android/mms/model/ContentRestriction;
    .registers 2

    .prologue
    .line 196
    sget-object v0, Lcom/android/mms/model/AudioModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    if-eqz v0, :cond_7

    .line 197
    sget-object v0, Lcom/android/mms/model/AudioModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 199
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .registers 7
    .parameter "evt"

    .prologue
    .line 161
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, evtType:Ljava/lang/String;
    const-string v2, "AudioModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 165
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 166
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 176
    :cond_32
    :goto_32
    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 177
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/model/AudioModel;->notifyModelChanged(Z)V

    .line 178
    return-void

    .line 167
    :cond_3a
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 168
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_32

    .line 169
    :cond_45
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 170
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_32

    .line 171
    :cond_50
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 172
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 173
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/AudioModel;->mSeekTo:I

    goto :goto_32
.end method

.method protected isPlayable()Z
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 156
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->notifyModelChanged(Z)V

    .line 158
    return-void
.end method
