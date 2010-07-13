.class public Lcom/android/mms/ui/DeliveryReportActivity;
.super Landroid/app/ListActivity;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;,
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    }
.end annotation


# static fields
.field static final COLUMN_DELIVERY_REPORT:I = 0x1

.field static final COLUMN_DELIVERY_STATUS:I = 0x1

.field static final COLUMN_READ_REPORT:I = 0x2

.field static final COLUMN_READ_STATUS:I = 0x2

.field static final COLUMN_RECIPIENT:I = 0x0

.field static final MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String; = null

.field static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String; = null

.field static final SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeliveryReportActivity"


# instance fields
.field private mMessageId:J

.field private mMessageType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "address"

    .line 64
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v5, v0, v2

    const-string v1, "d_rpt"

    aput-object v1, v0, v3

    const-string v1, "rr"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 70
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v5, v0, v2

    const-string v1, "delivery_status"

    aput-object v1, v0, v3

    const-string v1, "read_status"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 76
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v5, v0, v2

    const-string v1, "status"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 402
    return-void
.end method

.method private getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J
    .registers 9
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const-wide/16 v3, 0x0

    const-string v5, "message_id"

    .line 136
    const-wide/16 v0, 0x0

    .line 138
    .local v0, msgId:J
    if-eqz p1, :cond_e

    .line 139
    const-string v2, "message_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 142
    :cond_e
    cmp-long v2, v0, v3

    if-nez v2, :cond_18

    .line 143
    const-string v2, "message_id"

    invoke-virtual {p2, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 146
    :cond_18
    return-wide v0
.end method

.method private getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const-string v2, "message_type"

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, msgType:Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 153
    const-string v1, "message_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_b
    if-nez v0, :cond_13

    .line 157
    const-string v1, "message_type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_13
    return-object v0
.end method

.method private getMmsReportItems()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 291
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportRequests()Ljava/util/List;

    move-result-object v3

    .line 292
    .local v3, reportReqs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    if-nez v3, :cond_9

    move-object v6, v7

    .line 308
    :goto_8
    return-object v6

    .line 296
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_11

    move-object v6, v7

    .line 297
    goto :goto_8

    .line 300
    :cond_11
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatus()Ljava/util/Map;

    move-result-object v4

    .line 301
    .local v4, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    .line 303
    .local v2, reportReq:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0700d8

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, statusText:Ljava/lang/String;
    new-instance v6, Lcom/android/mms/ui/DeliveryReportItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0700d7

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .end local v2           #reportReq:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
    .end local v5           #statusText:Ljava/lang/String;
    :cond_6b
    move-object v6, v1

    .line 308
    goto :goto_8
.end method

.method private getMmsReportRequests()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 349
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 351
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 354
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1e

    move-object v0, v4

    .line 372
    :goto_1d
    return-object v0

    .line 359
    :cond_1e
    :try_start_1e
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_4c

    move-result v0

    if-gtz v0, :cond_29

    .line 372
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_1d

    .line 363
    :cond_29
    :try_start_29
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v8, reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :goto_2e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 365
    new-instance v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;-><init>(Ljava/lang/String;II)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_4c

    goto :goto_2e

    .line 372
    .end local v8           #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :catchall_4c
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :cond_51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_1d
.end method

.method private getMmsReportStatus()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v11, "DeliveryReportActivity"

    .line 312
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 314
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 317
    .local v7, c:Landroid/database/Cursor;
    const-string v0, "DeliveryReportActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMessageId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    if-nez v7, :cond_3e

    move-object v0, v4

    .line 344
    :goto_3d
    return-object v0

    .line 324
    :cond_3e
    :try_start_3e
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v10, statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :goto_43
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 328
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, recipient:Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 332
    :goto_59
    new-instance v9, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v9, v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;-><init>(II)V

    .line 335
    .local v9, status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    const-string v0, "DeliveryReportActivity"

    const-string v1, "---------------------------------------------------------->"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "DeliveryReportActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMmsReportStatus () recipient :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "DeliveryReportActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMmsReportStatus () COLUMN_DELIVERY_STATUS :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "DeliveryReportActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMmsReportStatus () COLUMN_READ_STATUS :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "DeliveryReportActivity"

    const-string v1, "<----------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cb
    .catchall {:try_start_3e .. :try_end_cb} :catchall_cd

    goto/16 :goto_43

    .line 344
    .end local v8           #recipient:Ljava/lang/String;
    .end local v9           #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .end local v10           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :catchall_cd
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 329
    .restart local v8       #recipient:Ljava/lang/String;
    .restart local v10       #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_d2
    :try_start_d2
    invoke-static {v8}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_cd

    move-result-object v0

    move-object v8, v0

    goto :goto_59

    .line 344
    .end local v8           #recipient:Ljava/lang/String;
    :cond_d8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    goto/16 :goto_3d
.end method

.method private getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    const v5, 0x7f0700d1

    const-string v4, "DeliveryReportActivity"

    .line 200
    if-nez p2, :cond_13

    .line 202
    const-string v2, "DeliveryReportActivity"

    const-string v2, "status_pending 1"

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    :goto_12
    return-object v2

    .line 206
    :cond_13
    invoke-virtual {p1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, recipient:Ljava/lang/String;
    const-string v2, "DeliveryReportActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipient :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 210
    :goto_3a
    const-string v2, "DeliveryReportActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipient after filter :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {p2, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-result-object v1

    .line 213
    .local v1, status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    if-nez v1, :cond_7a

    .line 214
    invoke-virtual {p1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->isReadReportRequested()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 216
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-result-object v1

    .line 220
    :cond_66
    if-nez v1, :cond_7a

    .line 222
    const-string v2, "DeliveryReportActivity"

    const-string v2, "status_pending 2"

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    .line 208
    .end local v1           #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    :cond_74
    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_3a

    .line 227
    .restart local v1       #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    :cond_7a
    invoke-virtual {p1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->isReadReportRequested()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 228
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    if-eqz v2, :cond_89

    .line 229
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    packed-switch v2, :pswitch_data_ec

    .line 240
    :cond_89
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    sparse-switch v2, :sswitch_data_f4

    .line 252
    const-string v2, "DeliveryReportActivity"

    const-string v2, "status_failed "

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const v2, 0x7f0700d4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 231
    :pswitch_9e
    const-string v2, "DeliveryReportActivity"

    const-string v2, "status_read "

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const v2, 0x7f0700d2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 234
    :pswitch_ae
    const-string v2, "DeliveryReportActivity"

    const-string v2, "status_unread "

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const v2, 0x7f0700d5

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 242
    :sswitch_be
    const-string v2, "DeliveryReportActivity"

    const-string v2, "status_pending 3"

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 246
    :sswitch_cb
    const-string v2, "DeliveryReportActivity"

    const-string v2, "status_received "

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const v2, 0x7f0700d3

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 249
    :sswitch_db
    const-string v2, "DeliveryReportActivity"

    const-string v2, "status_rejected "

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const v2, 0x7f0700d6

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 229
    nop

    :pswitch_data_ec
    .packed-switch 0x80
        :pswitch_9e
        :pswitch_ae
    .end packed-switch

    .line 240
    :sswitch_data_f4
    .sparse-switch
        0x0 -> :sswitch_be
        0x81 -> :sswitch_cb
        0x82 -> :sswitch_db
        0x86 -> :sswitch_cb
    .end sparse-switch
.end method

.method private getReportItems()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 165
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsReportItems()Ljava/util/List;

    move-result-object v0

    .line 167
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportItems()Ljava/util/List;

    move-result-object v0

    goto :goto_e
.end method

.method private getSmsReportItems()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 175
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_28

    move-object v0, v5

    .line 193
    :goto_27
    return-object v0

    .line 180
    :cond_28
    :try_start_28
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_85

    move-result v0

    if-gtz v0, :cond_33

    .line 193
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_27

    .line 184
    :cond_33
    :try_start_33
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v8, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    :goto_38
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 186
    new-instance v0, Lcom/android/mms/ui/DeliveryReportItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700d7

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0700d8

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsStatusText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catchall {:try_start_33 .. :try_end_84} :catchall_85

    goto :goto_38

    .line 193
    .end local v8           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    :catchall_85
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    :cond_8a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_27
.end method

.method private getSmsStatusText(I)Ljava/lang/String;
    .registers 3
    .parameter "status"

    .prologue
    .line 377
    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    .line 379
    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_a
    return-object v0

    .line 380
    :cond_b
    const/16 v0, 0x80

    if-lt p1, v0, :cond_17

    .line 382
    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 383
    :cond_17
    const/16 v0, 0x40

    if-lt p1, v0, :cond_23

    .line 385
    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 388
    :cond_23
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private initListAdapter()V
    .registers 5

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getReportItems()Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    if-nez v0, :cond_24

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .restart local v0       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    new-instance v1, Lcom/android/mms/ui/DeliveryReportItem;

    const-string v2, ""

    const v3, 0x7f0700d0

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v1, "DeliveryReportActivity"

    const-string v2, "cursor == null"

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_24
    new-instance v1, Lcom/android/mms/ui/DeliveryReportAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/DeliveryReportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    return-void
.end method

.method private initListView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 109
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030011

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, header:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 111
    return-void
.end method

.method private static queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .registers 10
    .parameter
    .parameter "recipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;"
        }
    .end annotation

    .prologue
    .local p0, status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    const-string v7, "status.get(r) :"

    const-string v6, "DeliveryReportActivity"

    .line 259
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 260
    .local v3, recipientSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 263
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v4, "DeliveryReportActivity"

    const-string v4, "queryStatusByRecipient Start"

    invoke-static {v6, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, i:I
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 267
    const-string v4, "DeliveryReportActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iterator.hasNext() i :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 270
    .local v2, r:Ljava/lang/String;
    const-string v4, "DeliveryReportActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compare :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 273
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 274
    const-string v4, "DeliveryReportActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status.get(r) :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    check-cast p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-object v4, p0

    .line 287
    .end local v2           #r:Ljava/lang/String;
    :goto_85
    return-object v4

    .line 280
    .restart local v2       #r:Ljava/lang/String;
    .restart local p0       #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_86
    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 281
    const-string v4, "DeliveryReportActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status.get(r) :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    check-cast p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-object v4, p0

    goto :goto_85

    .line 286
    .end local v2           #r:Ljava/lang/String;
    .restart local p0       #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_ac
    const-string v4, "DeliveryReportActivity"

    const-string v4, "status null !!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v6, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v4, 0x0

    goto :goto_85
.end method

.method private refreshDeliveryReport()V
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 131
    .local v0, list:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 132
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 133
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->requestWindowFeature(I)Z

    .line 96
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->initListView()V

    .line 103
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->initListAdapter()V

    .line 104
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->refreshDeliveryReport()V

    .line 127
    return-void
.end method
