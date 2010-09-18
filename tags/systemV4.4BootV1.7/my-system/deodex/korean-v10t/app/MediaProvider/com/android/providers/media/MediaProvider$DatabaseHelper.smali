.class final Lcom/android/providers/media/MediaProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mAlbumCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mInternal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6
    .parameter "context"
    .parameter "name"
    .parameter "internal"

    .prologue
    .line 155
    const/4 v0, 0x0

    const/16 v1, 0x4c

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 156
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 157
    iput-boolean p3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    .line 158
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const/4 v1, 0x0

    const/16 v2, 0x4c

    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 166
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 23
    .parameter "db"

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 249
    :cond_8
    return-void

    .line 187
    :cond_9
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v5, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 190
    .local v11, now:J
    :try_start_19
    invoke-virtual {v5, v11, v12}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1c} :catch_66

    .line 198
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, databases:[Ljava/lang/String;
    array-length v2, v3

    .line 200
    .local v2, count:I
    const/4 v7, 0x3

    .line 203
    .local v7, limit:I
    const-wide v18, 0x134fd9000L

    sub-long v16, v11, v18

    .line 204
    .local v16, twoMonthsAgo:J
    const/4 v6, 0x0

    .local v6, i:I
    :goto_30
    move-object v0, v3

    array-length v0, v0

    move/from16 v18, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_db

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    aget-object v19, v3, v6

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 206
    .local v13, other:Ljava/io/File;
    const-string v18, "internal.db"

    aget-object v19, v3, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_55

    invoke-virtual {v5, v13}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_71

    .line 207
    :cond_55
    const/16 v18, 0x0

    aput-object v18, v3, v6

    .line 208
    add-int/lit8 v2, v2, -0x1

    .line 209
    invoke-virtual {v5, v13}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_63

    .line 212
    add-int/lit8 v7, v7, -0x1

    .line 204
    :cond_63
    :goto_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 192
    .end local v2           #count:I
    .end local v3           #databases:[Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #limit:I
    .end local v13           #other:Ljava/io/File;
    .end local v16           #twoMonthsAgo:J
    :catch_66
    move-exception v4

    .line 194
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Ljava/lang/String;

    move-result-object v18

    const-string v19, "System.currentTimeMillis() returned negative value"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 215
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #count:I
    .restart local v3       #databases:[Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v7       #limit:I
    .restart local v13       #other:Ljava/io/File;
    .restart local v16       #twoMonthsAgo:J
    :cond_71
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 216
    .local v14, time:J
    cmp-long v18, v14, v16

    if-gez v18, :cond_63

    .line 217
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleting old database "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v3, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    aget-object v19, v3, v6

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 219
    const/16 v18, 0x0

    aput-object v18, v3, v6

    .line 220
    add-int/lit8 v2, v2, -0x1

    goto :goto_63

    .line 242
    .end local v13           #other:Ljava/io/File;
    .end local v14           #time:J
    .local v8, lruIndex:I
    .local v9, lruTime:J
    :cond_a7
    const/16 v18, -0x1

    move v0, v8

    move/from16 v1, v18

    if-eq v0, v1, :cond_db

    .line 243
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleting old database "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v3, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    aget-object v19, v3, v8

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 245
    const/16 v18, 0x0

    aput-object v18, v3, v8

    .line 246
    add-int/lit8 v2, v2, -0x1

    .line 227
    .end local v8           #lruIndex:I
    .end local v9           #lruTime:J
    :cond_db
    if-le v2, v7, :cond_8

    .line 228
    const/4 v8, -0x1

    .line 229
    .restart local v8       #lruIndex:I
    const-wide/16 v9, 0x0

    .line 231
    .restart local v9       #lruTime:J
    const/4 v6, 0x0

    :goto_e1
    move-object v0, v3

    array-length v0, v0

    move/from16 v18, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_a7

    .line 232
    aget-object v18, v3, v6

    if-eqz v18, :cond_10a

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    aget-object v19, v3, v6

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 234
    .restart local v14       #time:J
    const-wide/16 v18, 0x0

    cmp-long v18, v9, v18

    if-eqz v18, :cond_108

    cmp-long v18, v14, v9

    if-gez v18, :cond_10a

    .line 235
    :cond_108
    move v8, v6

    .line 236
    move-wide v9, v14

    .line 231
    .end local v14           #time:J
    :cond_10a
    add-int/lit8 v6, v6, 0x1

    goto :goto_e1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    invoke-static {p1, v0, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 175
    return-void
.end method
