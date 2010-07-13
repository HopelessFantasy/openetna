.class Lcom/android/providers/downloads/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "DownloadNotification"

.field static final WHERE_COMPLETED:Ljava/lang/String; = "status >= \'200\' AND visibility == \'1\'"

.field static final WHERE_RUNNING:Ljava/lang/String; = "(status >= \'100\') AND (status <= \'199\') AND (visibility IS NULL OR visibility == \'0\' OR visibility == \'1\')"


# instance fields
.field mContext:Landroid/content/Context;

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/downloads/DownloadNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    .line 99
    return-void
.end method

.method private getDownloadingText(JJ)Ljava/lang/String;
    .registers 10
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 290
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_9

    .line 291
    const-string v3, ""

    .line 297
    :goto_8
    return-object v3

    .line 293
    :cond_9
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p3

    div-long v0, v3, p1

    .line 294
    .local v0, progress:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 296
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method private updateActiveNotification()V
    .registers 32

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "title"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "description"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "notificationpackage"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "notificationclass"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "current_bytes"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "total_bytes"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "status"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "_data"

    aput-object v9, v7, v8

    const-string v8, "(status >= \'100\') AND (status <= \'199\') AND (visibility IS NULL OR visibility == \'0\' OR visibility == \'1\')"

    const/4 v9, 0x0

    const-string v10, "_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 121
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_49

    .line 209
    :cond_48
    return-void

    .line 126
    :cond_49
    const/16 v19, 0x0

    .line 127
    .local v19, idColumn:I
    const/16 v29, 0x1

    .line 128
    .local v29, titleColumn:I
    const/4 v15, 0x2

    .line 129
    .local v15, descColumn:I
    const/16 v24, 0x3

    .line 130
    .local v24, ownerColumn:I
    const/4 v13, 0x4

    .line 131
    .local v13, classOwnerColumn:I
    const/4 v14, 0x5

    .line 132
    .local v14, currentBytesColumn:I
    const/16 v30, 0x6

    .line 133
    .local v30, totalBytesColumn:I
    const/16 v27, 0x7

    .line 134
    .local v27, statusColumn:I
    const/16 v17, 0x8

    .line 137
    .local v17, filenameColumnId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 138
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_63
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_fc

    .line 139
    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 140
    .local v25, packageName:Ljava/lang/String;
    const/4 v5, 0x6

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 141
    .local v22, max:I
    const/4 v5, 0x5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 142
    .local v26, progress:I
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 143
    .local v28, title:Ljava/lang/String;
    if-eqz v28, :cond_85

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_95

    .line 144
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 147
    :cond_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    move-object v0, v5

    move-object/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;II)V

    .line 138
    :goto_bb
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_63

    .line 150
    :cond_bf
    new-instance v21, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    invoke-direct/range {v21 .. v21}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;-><init>()V

    .line 151
    .local v21, item:Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->id:I

    .line 152
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->packageName:Ljava/lang/String;

    .line 153
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->description:Ljava/lang/String;

    .line 154
    const/4 v5, 0x4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 155
    .local v12, className:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;II)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    .line 160
    .end local v12           #className:Ljava/lang/String;
    .end local v21           #item:Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    .end local v22           #max:I
    .end local v25           #packageName:Ljava/lang/String;
    .end local v26           #progress:I
    .end local v28           #title:Ljava/lang/String;
    :cond_fc
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_10c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 165
    .restart local v21       #item:Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    new-instance v23, Landroid/app/Notification;

    invoke-direct/range {v23 .. v23}, Landroid/app/Notification;-><init>()V

    .line 166
    .local v23, n:Landroid/app/Notification;
    const v5, 0x1080081

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 168
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 171
    new-instance v16, Landroid/widget/RemoteViews;

    const-string v5, "com.android.providers.downloads"

    const/high16 v6, 0x7f02

    move-object/from16 v0, v16

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 174
    .local v16, expandedView:Landroid/widget/RemoteViews;
    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titles:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .local v28, title:Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    move v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_280

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f03000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titles:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->number:I

    .line 179
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    move v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_1ab

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f03000b

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    move v9, v0

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_1ab
    :goto_1ab
    const v5, 0x7f040002

    move-object/from16 v0, v16

    move v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    const v5, 0x7f040004

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalTotal:I

    move v6, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalCurrent:I

    move v7, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalTotal:I

    move v8, v0

    const/4 v9, -0x1

    if-ne v8, v9, :cond_291

    const/4 v8, 0x1

    :goto_1cc
    move-object/from16 v0, v16

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 192
    const v5, 0x7f040001

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalTotal:I

    move v6, v0

    int-to-long v6, v6

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalCurrent:I

    move v8, v0

    int-to-long v8, v8

    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/DownloadNotification;->getDownloadingText(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 194
    const/high16 v5, 0x7f04

    const v6, 0x1080081

    move-object/from16 v0, v16

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 196
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 198
    new-instance v20, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOAD_LIST"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v20, intent:Landroid/content/Intent;
    const-string v5, "com.android.providers.downloads"

    const-class v6, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->id:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    const-string v5, "multiple"

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    move v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_294

    const/4 v6, 0x1

    :goto_251
    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->id:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_10c

    .line 184
    .end local v20           #intent:Landroid/content/Intent;
    :cond_280
    const v5, 0x7f040003

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->description:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v16

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1ab

    .line 188
    :cond_291
    const/4 v8, 0x0

    goto/16 :goto_1cc

    .line 202
    .restart local v20       #intent:Landroid/content/Intent;
    :cond_294
    const/4 v6, 0x0

    goto :goto_251
.end method

.method private updateCompletedNotification()V
    .registers 29

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "title"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "description"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "notificationpackage"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "notificationclass"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "current_bytes"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "total_bytes"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "status"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "_data"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "lastmod"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "destination"

    aput-object v9, v7, v8

    const-string v8, "status >= \'200\' AND visibility == \'1\'"

    const/4 v9, 0x0

    const-string v10, "_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 224
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_55

    .line 284
    :goto_54
    return-void

    .line 229
    :cond_55
    const/16 v19, 0x0

    .line 230
    .local v19, idColumn:I
    const/16 v26, 0x1

    .line 231
    .local v26, titleColumn:I
    const/16 v16, 0x2

    .line 232
    .local v16, descColumn:I
    const/16 v23, 0x3

    .line 233
    .local v23, ownerColumn:I
    const/4 v13, 0x4

    .line 234
    .local v13, classOwnerColumn:I
    const/4 v15, 0x5

    .line 235
    .local v15, currentBytesColumn:I
    const/16 v27, 0x6

    .line 236
    .local v27, totalBytesColumn:I
    const/16 v24, 0x7

    .line 237
    .local v24, statusColumn:I
    const/16 v18, 0x8

    .line 238
    .local v18, filenameColumnId:I
    const/16 v21, 0x9

    .line 239
    .local v21, lastModColumnId:I
    const/16 v17, 0xa

    .line 241
    .local v17, destinationColumnId:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_6c
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_19c

    .line 243
    new-instance v22, Landroid/app/Notification;

    invoke-direct/range {v22 .. v22}, Landroid/app/Notification;-><init>()V

    .line 244
    .local v22, n:Landroid/app/Notification;
    const v5, 0x1080082

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 246
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 247
    .local v25, title:Ljava/lang/String;
    if-eqz v25, :cond_8c

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9c

    .line 248
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 251
    :cond_9c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 254
    .local v14, contentUri:Landroid/net/Uri;
    const/4 v5, 0x7

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 257
    .local v12, caption:Ljava/lang/String;
    new-instance v20, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOAD_LIST"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v20, intent:Landroid/content/Intent;
    :goto_e3
    const-string v5, "com.android.providers.downloads"

    const-class v6, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v20

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object/from16 v2, v25

    move-object v3, v12

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 273
    new-instance v20, Landroid/content/Intent;

    .end local v20           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.DOWNLOAD_HIDE"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v5, "com.android.providers.downloads"

    const-class v6, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 279
    const/16 v5, 0x9

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 241
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6c

    .line 259
    .end local v12           #caption:Ljava/lang/String;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 261
    .restart local v12       #caption:Ljava/lang/String;
    const/16 v5, 0xa

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_190

    .line 262
    new-instance v20, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOAD_OPEN"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v20       #intent:Landroid/content/Intent;
    goto/16 :goto_e3

    .line 264
    .end local v20           #intent:Landroid/content/Intent;
    :cond_190
    new-instance v20, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOAD_LIST"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v20       #intent:Landroid/content/Intent;
    goto/16 :goto_e3

    .line 283
    .end local v12           #caption:Ljava/lang/String;
    .end local v14           #contentUri:Landroid/net/Uri;
    .end local v20           #intent:Landroid/content/Intent;
    .end local v22           #n:Landroid/app/Notification;
    .end local v25           #title:Ljava/lang/String;
    :cond_19c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_54
.end method


# virtual methods
.method public updateNotification()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadNotification;->updateActiveNotification()V

    .line 106
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadNotification;->updateCompletedNotification()V

    .line 107
    return-void
.end method
