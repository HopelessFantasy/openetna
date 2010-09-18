.class public Lcom/android/mms/transaction/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "PushReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/mms/transaction/PushReceiver;->findThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/mms/transaction/PushReceiver;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v0

    return v0
.end method

.method private static findThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J
    .registers 14
    .parameter "context"
    .parameter "pdu"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x3d

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 156
    const/16 v0, 0x86

    if-ne p2, v0, :cond_69

    .line 157
    new-instance v8, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 162
    .local v8, messageId:Ljava/lang/String;
    :goto_14
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v9, sb:Ljava/lang/StringBuilder;
    const-string v0, "m_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v0, "m_type"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    const/16 v0, 0x80

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 176
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_78

    .line 178
    :try_start_54
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_75

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 179
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_7b

    move-result-wide v0

    .line 182
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 186
    :goto_68
    return-wide v0

    .line 159
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .restart local p1
    :cond_69
    new-instance v8, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v8       #messageId:Ljava/lang/String;
    goto :goto_14

    .line 182
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :cond_75
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_78
    const-wide/16 v0, -0x1

    goto :goto_68

    .line 182
    :catchall_7b
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .registers 14
    .parameter "context"
    .parameter "nInd"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 191
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    .line 192
    .local v9, rawLocation:[B
    if-eqz v9, :cond_35

    .line 193
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 194
    .local v8, location:Ljava/lang/String;
    const-string v4, "ct_l = ?"

    .line 195
    .local v4, selection:Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    aput-object v8, v5, v10

    .line 196
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v10

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 200
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_35

    .line 202
    :try_start_27
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_37

    move-result v0

    if-lez v0, :cond_32

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 211
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #location:Ljava/lang/String;
    :goto_31
    return v0

    .line 207
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #location:Ljava/lang/String;
    :cond_32
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #location:Ljava/lang/String;
    :cond_35
    move v0, v10

    .line 211
    goto :goto_31

    .line 207
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #location:Ljava/lang/String;
    :catchall_37
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 141
    const-string v2, "PushReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received PUSH Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 146
    .local v0, pm:Landroid/os/PowerManager;
    const-string v2, "MMS PushReceiver"

    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 148
    .local v1, wl:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 149
    new-instance v2, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;-><init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V

    new-array v3, v5, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    .end local v0           #pm:Landroid/os/PowerManager;
    .end local v1           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_51
    return-void
.end method
