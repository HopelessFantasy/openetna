.class public Lcom/android/providers/telephony/MmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsProvider.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MMS_ALL:I = 0x0

.field private static final MMS_ALL_ID:I = 0x1

.field private static final MMS_ALL_PART:I = 0xa

.field private static final MMS_DRAFTS:I = 0x6

.field private static final MMS_DRAFTS_ID:I = 0x7

.field private static final MMS_DRM_STORAGE:I = 0x11

.field private static final MMS_DRM_STORAGE_ID:I = 0x12

.field private static final MMS_INBOX:I = 0x2

.field private static final MMS_INBOX_ID:I = 0x3

.field private static final MMS_MSG_ADDR:I = 0xd

.field private static final MMS_MSG_PART:I = 0xb

.field private static final MMS_OUTBOX:I = 0x8

.field private static final MMS_OUTBOX_ID:I = 0x9

.field private static final MMS_PART_ID:I = 0xc

.field private static final MMS_REPORT_REQUEST:I = 0x10

.field private static final MMS_REPORT_STATUS:I = 0xf

.field private static final MMS_SENDING_RATE:I = 0xe

.field private static final MMS_SENT:I = 0x4

.field private static final MMS_SENT_ID:I = 0x5

.field static final TABLE_ADDR:Ljava/lang/String; = "addr"

.field static final TABLE_DRM:Ljava/lang/String; = "drm"

.field static final TABLE_PART:Ljava/lang/String; = "part"

.field static final TABLE_PDU:Ljava/lang/String; = "pdu"

.field static final TABLE_RATE:Ljava/lang/String; = "rate"

.field private static final TAG:Ljava/lang/String; = "MmsProvider"

.field private static final VND_ANDROID_DIR_MMS:Ljava/lang/String; = "vnd.android-dir/mms"

.field private static final VND_ANDROID_MMS:Ljava/lang/String; = "vnd.android/mms"

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-string v3, "mms"

    .line 775
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 778
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 779
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "#"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 780
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "inbox"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 781
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "inbox/#"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 782
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "sent"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 783
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "sent/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 784
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drafts"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 785
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drafts/#"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 786
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "outbox"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 787
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "outbox/#"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 788
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "part"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 789
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "#/part"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 790
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "part/#"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 791
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "#/addr"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 792
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "rate"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 793
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "report-status/#"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 794
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "report-request/#"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 795
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drm"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 796
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drm/#"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 797
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 802
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 807
    :goto_7
    return-object v0

    .line 804
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, p0

    .line 805
    goto :goto_7

    .line 807
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .registers 5
    .parameter "qb"
    .parameter "msgBox"

    .prologue
    .line 207
    const-string v0, "pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 209
    if-eqz p2, :cond_1d

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 212
    :cond_1d
    return-void
.end method

.method private static deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .parameter "db"
    .parameter "table"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 588
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 590
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_17

    move v0, v10

    .line 613
    :goto_16
    return v0

    .line 597
    :cond_17
    :try_start_17
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_42

    move-result v0

    if-nez v0, :cond_22

    .line 610
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_16

    .line 601
    :cond_22
    :goto_22
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_42

    move-result v0

    if-eqz v0, :cond_47

    .line 604
    :try_start_28
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_42
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_35} :catch_36

    goto :goto_22

    .line 605
    :catch_36
    move-exception v0

    move-object v9, v0

    .line 606
    .local v9, ex:Ljava/lang/Throwable;
    :try_start_38
    const-string v0, "MmsProvider"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_42

    goto :goto_22

    .line 610
    .end local v9           #ex:Ljava/lang/Throwable;
    :catchall_42
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_47
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 613
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_16
.end method

.method static deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I
    .registers 13
    .parameter "context"
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "uri"

    .prologue
    .line 545
    const-string v1, "pdu"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 547
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_18

    .line 548
    const/4 p0, 0x0

    .line 573
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_17
    return p0

    .line 552
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_18
    :try_start_18
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_3e

    move-result v1

    if-nez v1, :cond_23

    .line 553
    const/4 p0, 0x0

    .line 561
    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 556
    .restart local p0
    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 557
    const-string v1, "mid = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_3e

    goto :goto_23

    .line 561
    :catchall_3e
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local p0
    :cond_43
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 564
    const-string v0, "pdu"

    .end local v0           #cursor:Landroid/database/Cursor;
    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 565
    .local p1, count:I
    if-lez p1, :cond_5d

    .line 566
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-string p3, "android.intent.action.CONTENT_CHANGED"

    .end local p3
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local p2, intent:Landroid/content/Intent;
    const-string p3, "deleted_contents"

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local p2           #intent:Landroid/content/Intent;
    :cond_5d
    move p0, p1

    .line 573
    goto :goto_17
.end method

.method private static deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 578
    const-string v0, "part"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 583
    const-string v0, "drm"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private filterUnsupportedKeys(Landroid/content/ContentValues;)V
    .registers 3
    .parameter "values"

    .prologue
    .line 698
    const-string v0, "d_tm_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 699
    const-string v0, "s_vis"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 700
    const-string v0, "r_chg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 701
    const-string v0, "r_chg_dl_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 702
    const-string v0, "r_chg_dl"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 703
    const-string v0, "r_chg_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 704
    const-string v0, "r_chg_sz"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 705
    const-string v0, "p_s_by"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 706
    const-string v0, "p_s_d"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 707
    const-string v0, "store"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 708
    const-string v0, "mm_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 709
    const-string v0, "mm_flg_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 710
    const-string v0, "mm_flg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 711
    const-string v0, "store_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 712
    const-string v0, "store_st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 713
    const-string v0, "stored"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 714
    const-string v0, "totals"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 715
    const-string v0, "mb_t"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 716
    const-string v0, "mb_t_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 717
    const-string v0, "qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 718
    const-string v0, "mb_qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 719
    const-string v0, "mb_qt_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 720
    const-string v0, "m_cnt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 721
    const-string v0, "start"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 722
    const-string v0, "d_ind"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 723
    const-string v0, "e_des"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 724
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 725
    const-string v0, "r_r_mod"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 726
    const-string v0, "r_r_mod_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 727
    const-string v0, "st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 732
    const-string v0, "aux_apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 733
    const-string v0, "drm_c"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 734
    const-string v0, "adp_a"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 735
    const-string v0, "repl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 736
    const-string v0, "cl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 737
    const-string v0, "cl_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 740
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method private getMessageBoxByMatch(I)I
    .registers 5
    .parameter "match"

    .prologue
    .line 448
    packed-switch p1, :pswitch_data_24

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad Arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :pswitch_1c
    const/4 v0, 0x1

    .line 460
    :goto_1d
    return v0

    .line 454
    :pswitch_1e
    const/4 v0, 0x2

    goto :goto_1d

    .line 457
    :pswitch_20
    const/4 v0, 0x3

    goto :goto_1d

    .line 460
    :pswitch_22
    const/4 v0, 0x4

    goto :goto_1d

    .line 448
    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_1c
        :pswitch_1e
        :pswitch_1e
        :pswitch_20
        :pswitch_20
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method private notifyChange()V
    .registers 4

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 746
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v11, 0x0

    const-string v10, "_id="

    .line 469
    sget-object v8, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 474
    .local v4, match:I
    const/4 v2, 0x0

    .line 475
    .local v2, extraSelection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 477
    .local v6, notify:Z
    packed-switch v4, :pswitch_data_116

    .line 518
    :pswitch_e
    const-string v8, "MmsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No match for URI \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v11

    .line 540
    :goto_2d
    return v8

    .line 483
    :pswitch_2e
    const/4 v6, 0x1

    .line 484
    const-string v7, "pdu"

    .line 485
    .local v7, table:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    :cond_48
    :goto_48
    invoke-static {p2, v2}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, finalSelection:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 524
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 526
    .local v1, deletedRows:I
    const-string v8, "pdu"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f3

    .line 527
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v3, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    .line 537
    :goto_63
    if-lez v1, :cond_6a

    if-eqz v6, :cond_6a

    .line 538
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    :cond_6a
    move v8, v1

    .line 540
    goto :goto_2d

    .line 492
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #deletedRows:I
    .end local v3           #finalSelection:Ljava/lang/String;
    .end local v7           #table:Ljava/lang/String;
    :pswitch_6c
    const/4 v6, 0x1

    .line 493
    const-string v7, "pdu"

    .line 494
    .restart local v7       #table:Ljava/lang/String;
    if-eqz v4, :cond_48

    .line 495
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v5

    .line 496
    .local v5, msgBox:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msg_box="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 497
    goto :goto_48

    .line 500
    .end local v5           #msgBox:I
    .end local v7           #table:Ljava/lang/String;
    :pswitch_89
    const-string v7, "part"

    .line 501
    .restart local v7       #table:Ljava/lang/String;
    goto :goto_48

    .line 503
    .end local v7           #table:Ljava/lang/String;
    :pswitch_8c
    const-string v7, "part"

    .line 504
    .restart local v7       #table:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    goto :goto_48

    .line 507
    .end local v7           #table:Ljava/lang/String;
    :pswitch_ac
    const-string v7, "part"

    .line 508
    .restart local v7       #table:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    goto/16 :goto_48

    .line 511
    .end local v7           #table:Ljava/lang/String;
    :pswitch_ce
    const-string v7, "addr"

    .line 512
    .restart local v7       #table:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msg_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 513
    goto/16 :goto_48

    .line 515
    .end local v7           #table:Ljava/lang/String;
    :pswitch_ef
    const-string v7, "drm"

    .line 516
    .restart local v7       #table:Ljava/lang/String;
    goto/16 :goto_48

    .line 529
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #deletedRows:I
    .restart local v3       #finalSelection:Ljava/lang/String;
    :cond_f3
    const-string v8, "part"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_101

    .line 530
    invoke-static {v0, v3, p3}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_63

    .line 531
    :cond_101
    const-string v8, "drm"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10f

    .line 532
    invoke-static {v0, v3, p3}, Lcom/android/providers/telephony/MmsProvider;->deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_63

    .line 534
    :cond_10f
    invoke-virtual {v0, v7, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_63

    .line 477
    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_2e
        :pswitch_6c
        :pswitch_2e
        :pswitch_6c
        :pswitch_2e
        :pswitch_6c
        :pswitch_2e
        :pswitch_6c
        :pswitch_2e
        :pswitch_89
        :pswitch_8c
        :pswitch_ac
        :pswitch_ce
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_ef
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 15
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v12, "MmsProvider"

    const-string v11, "*/*"

    .line 216
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 217
    .local v9, match:I
    packed-switch v9, :pswitch_data_8c

    .line 254
    :pswitch_10
    const-string v0, "*/*"

    move-object v0, v11

    :goto_13
    return-object v0

    .line 223
    :pswitch_14
    const-string v0, "vnd.android-dir/mms"

    goto :goto_13

    .line 229
    :pswitch_17
    const-string v0, "vnd.android/mms"

    goto :goto_13

    .line 231
    :pswitch_1a
    iget-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "part"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "ct"

    aput-object v3, v2, v7

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 235
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_73

    .line 237
    :try_start_3a
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_4f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 238
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_6e

    move-result-object v0

    .line 243
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_13

    .line 240
    :cond_4f
    :try_start_4f
    const-string v0, "MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.count() != 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_6e

    .line 243
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :goto_6a
    const-string v0, "*/*"

    move-object v0, v11

    goto :goto_13

    .line 243
    :catchall_6e
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 246
    :cond_73
    const-string v0, "MmsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor == null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 217
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_17
        :pswitch_14
        :pswitch_17
        :pswitch_14
        :pswitch_17
        :pswitch_14
        :pswitch_17
        :pswitch_14
        :pswitch_17
        :pswitch_10
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 32
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 260
    const/4 v10, 0x0

    .line 261
    .local v10, msgBox:I
    const/4 v12, 0x1

    .line 263
    .local v12, notify:Z
    sget-object v25, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 268
    .local v9, match:I
    const-string v22, "pdu"

    .line 269
    .local v22, table:Ljava/lang/String;
    packed-switch v9, :pswitch_data_47a

    .line 309
    :pswitch_11
    const-string v25, "MmsProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Invalid request: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v25, 0x0

    .line 444
    .end local p1
    :goto_2f
    return-object v25

    .line 271
    .restart local p1
    :pswitch_30
    const-string v25, "msg_box"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 272
    .local v11, msgBoxObj:Ljava/lang/Integer;
    if-eqz v11, :cond_fb

    .line 273
    check-cast v11, Ljava/lang/Integer;

    .end local v11           #msgBoxObj:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 313
    :goto_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 315
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v19, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 318
    .local v19, res:Landroid/net/Uri;
    const-string v25, "pdu"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_156

    .line 319
    const-string v25, "date"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_11e

    const/16 v25, 0x1

    move/from16 v4, v25

    .line 320
    .local v4, addDate:Z
    :goto_6a
    const-string v25, "msg_box"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_124

    const/16 v25, 0x1

    move/from16 v5, v25

    .line 323
    .local v5, addMsgBox:Z
    :goto_7a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 327
    new-instance v8, Landroid/content/ContentValues;

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 329
    .local v8, finalValues:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 331
    .local v23, timeInMillis:J
    if-eqz v4, :cond_a1

    .line 332
    const-string v25, "date"

    const-wide/16 v26, 0x3e8

    div-long v26, v23, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    :cond_a1
    if-eqz v5, :cond_b3

    if-eqz v10, :cond_b3

    .line 336
    const-string v25, "msg_box"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    :cond_b3
    const/16 v25, 0x1

    move v0, v10

    move/from16 v1, v25

    if-eq v0, v1, :cond_ca

    .line 341
    const-string v25, "read"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    :cond_ca
    const/16 v25, 0x0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .local v20, rowId:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-gtz v25, :cond_12a

    .line 345
    const-string v25, "MmsProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MmsProvider.insert: failed! "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v25, 0x0

    goto/16 :goto_2f

    .line 277
    .end local v4           #addDate:Z
    .end local v5           #addMsgBox:Z
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #finalValues:Landroid/content/ContentValues;
    .end local v19           #res:Landroid/net/Uri;
    .end local v20           #rowId:J
    .end local v23           #timeInMillis:J
    .restart local v11       #msgBoxObj:Ljava/lang/Integer;
    :cond_fb
    const/4 v10, 0x1

    .line 279
    goto/16 :goto_42

    .line 281
    .end local v11           #msgBoxObj:Ljava/lang/Integer;
    :pswitch_fe
    const/4 v10, 0x1

    .line 282
    goto/16 :goto_42

    .line 284
    :pswitch_101
    const/4 v10, 0x2

    .line 285
    goto/16 :goto_42

    .line 287
    :pswitch_104
    const/4 v10, 0x3

    .line 288
    goto/16 :goto_42

    .line 290
    :pswitch_107
    const/4 v10, 0x4

    .line 291
    goto/16 :goto_42

    .line 293
    :pswitch_10a
    const/4 v12, 0x0

    .line 294
    const-string v22, "part"

    .line 295
    goto/16 :goto_42

    .line 297
    :pswitch_10f
    const/4 v12, 0x0

    .line 298
    const-string v22, "addr"

    .line 299
    goto/16 :goto_42

    .line 301
    :pswitch_114
    const/4 v12, 0x0

    .line 302
    const-string v22, "rate"

    .line 303
    goto/16 :goto_42

    .line 305
    :pswitch_119
    const/4 v12, 0x0

    .line 306
    const-string v22, "drm"

    .line 307
    goto/16 :goto_42

    .line 319
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v19       #res:Landroid/net/Uri;
    :cond_11e
    const/16 v25, 0x0

    move/from16 v4, v25

    goto/16 :goto_6a

    .line 320
    .restart local v4       #addDate:Z
    :cond_124
    const/16 v25, 0x0

    move/from16 v5, v25

    goto/16 :goto_7a

    .line 349
    .restart local v5       #addMsgBox:Z
    .restart local v8       #finalValues:Landroid/content/ContentValues;
    .restart local v20       #rowId:J
    .restart local v23       #timeInMillis:J
    :cond_12a
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 441
    .end local v4           #addDate:Z
    .end local v5           #addMsgBox:Z
    .end local v8           #finalValues:Landroid/content/ContentValues;
    .end local v20           #rowId:J
    .end local v23           #timeInMillis:J
    .end local p1
    :goto_14d
    if-eqz v12, :cond_152

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    :cond_152
    move-object/from16 v25, v19

    .line 444
    goto/16 :goto_2f

    .line 351
    .restart local p1
    :cond_156
    const-string v25, "addr"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d6

    .line 352
    new-instance v8, Landroid/content/ContentValues;

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 353
    .restart local v8       #finalValues:Landroid/content/ContentValues;
    const-string v25, "msg_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/16 v25, 0x0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .restart local v20       #rowId:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-gtz v25, :cond_1b1

    .line 356
    const-string v25, "MmsProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Failed to insert address: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/16 v25, 0x0

    goto/16 :goto_2f

    .line 360
    :cond_1b1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/addr/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_14d

    .line 361
    .end local v8           #finalValues:Landroid/content/ContentValues;
    .end local v20           #rowId:J
    .restart local p1
    :cond_1d6
    const-string v25, "part"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_312

    .line 362
    new-instance v8, Landroid/content/ContentValues;

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 364
    .restart local v8       #finalValues:Landroid/content/ContentValues;
    const/16 v25, 0xb

    move v0, v9

    move/from16 v1, v25

    if-ne v0, v1, :cond_207

    .line 365
    const-string v25, "mid"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_207
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    const-string v27, "parts"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/PART_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "cl"

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 375
    .local v18, path:Ljava/lang/String;
    const-string v25, "_data"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v17, partFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_2a9

    .line 380
    :try_start_25a
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->createNewFile()Z

    move-result v25

    if-nez v25, :cond_2a9

    .line 381
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to create new partFile: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_27d
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_27d} :catch_27d

    .line 384
    :catch_27d
    move-exception v25

    move-object/from16 v7, v25

    .line 385
    .local v7, e:Ljava/io/IOException;
    const-string v25, "MmsProvider"

    const-string v26, "createNewFile"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to create new partFile: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 391
    .end local v7           #e:Ljava/io/IOException;
    :cond_2a9
    const/16 v25, 0x0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .restart local v20       #rowId:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-gtz v25, :cond_2da

    .line 392
    const-string v25, "MmsProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MmsProvider.insert: failed! "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v25, 0x0

    goto/16 :goto_2f

    .line 397
    :cond_2da
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2ed

    .line 399
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1fc

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-static/range {v25 .. v28}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 405
    :cond_2ed
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/part/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 406
    goto/16 :goto_14d

    .end local v8           #finalValues:Landroid/content/ContentValues;
    .end local v17           #partFile:Ljava/io/File;
    .end local v18           #path:Ljava/lang/String;
    .end local v20           #rowId:J
    .restart local p1
    :cond_312
    const-string v25, "rate"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_361

    .line 407
    const-string v25, "sent_time"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 408
    .local v13, now:J
    const-wide/32 v25, 0x36ee80

    sub-long v15, v13, v25

    .line 410
    .local v15, oneHourAgo:J
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sent_time<="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    const/16 v25, 0x0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_14d

    .line 412
    .end local v13           #now:J
    .end local v15           #oneHourAgo:J
    :cond_361
    const-string v25, "drm"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_45c

    .line 413
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    const-string v27, "parts"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/PART_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 415
    .restart local v18       #path:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/16 v25, 0x1

    move-object v0, v8

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 416
    .restart local v8       #finalValues:Landroid/content/ContentValues;
    const-string v25, "_data"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .restart local v17       #partFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_406

    .line 421
    :try_start_3b7
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->createNewFile()Z

    move-result v25

    if-nez v25, :cond_406

    .line 422
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to create new file: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_3da
    .catch Ljava/io/IOException; {:try_start_3b7 .. :try_end_3da} :catch_3da

    .line 425
    :catch_3da
    move-exception v25

    move-object/from16 v7, v25

    .line 426
    .restart local v7       #e:Ljava/io/IOException;
    const-string v25, "MmsProvider"

    const-string v26, "createNewFile"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to create new file: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 432
    .end local v7           #e:Ljava/io/IOException;
    :cond_406
    const/16 v25, 0x0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .restart local v20       #rowId:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-gtz v25, :cond_437

    .line 433
    const-string v25, "MmsProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MmsProvider.insert: failed! "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/16 v25, 0x0

    goto/16 :goto_2f

    .line 436
    :cond_437
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/drm/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 437
    goto/16 :goto_14d

    .line 438
    .end local v8           #finalValues:Landroid/content/ContentValues;
    .end local v17           #partFile:Ljava/io/File;
    .end local v18           #path:Ljava/lang/String;
    .end local v20           #rowId:J
    :cond_45c
    new-instance v25, Ljava/lang/AssertionError;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unknown table type: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    .line 269
    nop

    :pswitch_data_47a
    .packed-switch 0x0
        :pswitch_30
        :pswitch_11
        :pswitch_fe
        :pswitch_11
        :pswitch_101
        :pswitch_11
        :pswitch_104
        :pswitch_11
        :pswitch_107
        :pswitch_11
        :pswitch_11
        :pswitch_10a
        :pswitch_11
        :pswitch_10f
        :pswitch_114
        :pswitch_11
        :pswitch_11
        :pswitch_119
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 68
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 71
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 76
    .local v8, match:I
    packed-switch v8, :pswitch_data_1e0

    .line 182
    :pswitch_e
    const-string v2, "MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v2, 0x0

    .line 203
    :goto_27
    return-object v2

    .line 78
    :pswitch_28
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    .line 186
    :goto_2c
    const/4 v7, 0x0

    .line 187
    .local v7, finalSortOrder:Ljava/lang/String;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pdu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 189
    const-string v7, "date DESC"

    .line 197
    :cond_41
    :goto_41
    iget-object v2, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 198
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 202
    .local v9, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v2, v9

    .line 203
    goto :goto_27

    .line 81
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #finalSortOrder:Ljava/lang/String;
    .end local v9           #ret:Landroid/database/Cursor;
    :pswitch_5d
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 84
    :pswitch_62
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 87
    :pswitch_67
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 90
    :pswitch_6c
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 93
    :pswitch_71
    const-string v2, "pdu"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 100
    :pswitch_98
    const-string v2, "pdu"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND msg_box="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 106
    :pswitch_da
    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 109
    :pswitch_e1
    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 113
    :pswitch_109
    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 117
    :pswitch_131
    const-string v2, "addr"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 147
    :pswitch_159
    const-string v2, "addr INNER JOIN (SELECT P1._id AS id1, P2._id AS id2, P3._id AS id3, ifnull(P2.st, 0) AS delivery_status, ifnull(P3.read_status, 0) AS read_status FROM pdu P1 INNER JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=134 LEFT JOIN pdu P3 ON P1.m_id=P3.m_id AND P3.m_type=136 UNION SELECT P1._id AS id1, P2._id AS id2, P3._id AS id3, ifnull(P2.st, 0) AS delivery_status, ifnull(P3.read_status, 0) AS read_status FROM pdu P1 INNER JOIN pdu P3 ON P1.m_id=P3.m_id AND P3.m_type=136 LEFT JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=134) T ON (msg_id=id2 AND type=151) OR (msg_id=id3 AND type=137)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "T.id1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 161
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_2c

    .line 169
    :pswitch_17e
    const-string v2, "addr join pdu on pdu._id = addr.msg_id"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pdu._id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 172
    const-string v2, " AND addr.type = 151"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 175
    :pswitch_1a4
    const-string v2, "rate"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 178
    :pswitch_1ab
    const-string v2, "drm"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 190
    .restart local v7       #finalSortOrder:Ljava/lang/String;
    :cond_1cc
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "part"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 191
    const-string v7, "seq"

    goto/16 :goto_41

    .line 194
    :cond_1dc
    move-object v7, p5

    goto/16 :goto_41

    .line 76
    nop

    :pswitch_data_1e0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_71
        :pswitch_5d
        :pswitch_98
        :pswitch_62
        :pswitch_98
        :pswitch_67
        :pswitch_98
        :pswitch_6c
        :pswitch_98
        :pswitch_da
        :pswitch_e1
        :pswitch_109
        :pswitch_131
        :pswitch_1a4
        :pswitch_159
        :pswitch_17e
        :pswitch_e
        :pswitch_1ab
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 22
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 619
    sget-object v14, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 624
    .local v10, match:I
    const/4 v12, 0x0

    .line 625
    .local v12, notify:Z
    const/4 v11, 0x0

    .line 628
    .local v11, msgId:Ljava/lang/String;
    packed-switch v10, :pswitch_data_e8

    .line 649
    :pswitch_e
    const-string v14, "MmsProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Update operation for \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' not implemented."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v14, 0x0

    .line 686
    .end local p1
    :goto_30
    return v14

    .line 634
    .restart local p1
    :pswitch_31
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 641
    :pswitch_35
    const/4 v12, 0x1

    .line 642
    const-string v13, "pdu"

    .line 653
    .local v13, table:Ljava/lang/String;
    :goto_38
    const/4 v7, 0x0

    .line 655
    .local v7, extraSelection:Ljava/lang/String;
    const-string v14, "pdu"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8b

    .line 657
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 658
    new-instance v9, Landroid/content/ContentValues;

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 660
    .local v9, finalValues:Landroid/content/ContentValues;
    if-eqz v11, :cond_65

    .line 661
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 680
    .end local p1
    :cond_65
    :goto_65
    move-object/from16 v0, p3

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 681
    .local v8, finalSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 682
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v0, v6

    move-object v1, v13

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 683
    .local v5, count:I
    if-eqz v12, :cond_86

    if-lez v5, :cond_86

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    :cond_86
    move v14, v5

    .line 686
    goto :goto_30

    .line 646
    .end local v5           #count:I
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #extraSelection:Ljava/lang/String;
    .end local v8           #finalSelection:Ljava/lang/String;
    .end local v9           #finalValues:Landroid/content/ContentValues;
    .end local v13           #table:Ljava/lang/String;
    .restart local p1
    :pswitch_88
    const-string v13, "part"

    .line 647
    .restart local v13       #table:Ljava/lang/String;
    goto :goto_38

    .line 663
    .restart local v7       #extraSelection:Ljava/lang/String;
    :cond_8b
    const-string v14, "part"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e5

    .line 664
    new-instance v9, Landroid/content/ContentValues;

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 666
    .restart local v9       #finalValues:Landroid/content/ContentValues;
    packed-switch v10, :pswitch_data_106

    goto :goto_65

    .line 668
    :pswitch_9f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 669
    goto :goto_65

    .line 671
    .restart local p1
    :pswitch_c2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 672
    goto :goto_65

    .line 677
    .end local v9           #finalValues:Landroid/content/ContentValues;
    .restart local p1
    :cond_e5
    const/4 v14, 0x0

    goto/16 :goto_30

    .line 628
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_35
        :pswitch_31
        :pswitch_35
        :pswitch_31
        :pswitch_35
        :pswitch_31
        :pswitch_35
        :pswitch_31
        :pswitch_35
        :pswitch_31
        :pswitch_e
        :pswitch_88
        :pswitch_88
    .end packed-switch

    .line 666
    :pswitch_data_106
    .packed-switch 0xb
        :pswitch_9f
        :pswitch_c2
    .end packed-switch
.end method
