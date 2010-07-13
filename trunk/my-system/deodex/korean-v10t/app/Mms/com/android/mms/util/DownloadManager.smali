.class public Lcom/android/mms/util/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFERRED_MASK:I = 0x4

.field public static final STATE_DOWNLOADING:I = 0x81

.field public static final STATE_PERMANENT_FAILURE:I = 0x87

.field public static final STATE_TRANSIENT_FAILURE:I = 0x82

.field public static final STATE_UNSTARTED:I = 0x80

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static sInstance:Lcom/android/mms/util/DownloadManager;


# instance fields
.field private mAutoDownload:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mRoamingStateListener:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/mms/util/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$1;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 81
    new-instance v0, Lcom/android/mms/util/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$2;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 105
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    .line 112
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoDownload ------> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method static synthetic access$000()Lcom/android/mms/util/DownloadManager;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/DownloadManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/util/DownloadManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/DownloadManager;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/util/DownloadManager;->getMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .registers 3
    .parameter "prefs"
    .parameter "context"

    .prologue
    .line 137
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->isRoaming()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;Landroid/content/Context;Z)Z
    .registers 11
    .parameter "prefs"
    .parameter "context"
    .parameter "roaming"

    .prologue
    const/4 v6, 0x1

    const-string v7, "DownloadManager"

    .line 142
    const-string v3, "pref_key_mms_auto_retrieval"

    invoke-interface {p0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 145
    .local v1, autoDownload:Z
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto download without roaming -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-eqz v1, :cond_71

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, alwaysAuto:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_ROAMINGNETWORK_I"

    invoke-static {v3, v4}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, retvRoming_flexValues:Ljava/lang/String;
    const-string v3, "[FLEX]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get retvRoming_flexValues :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz v2, :cond_51

    .line 154
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 155
    const/4 v0, 0x1

    .line 160
    :cond_51
    :goto_51
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto download during roaming -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz p2, :cond_6d

    if-eqz v0, :cond_71

    :cond_6d
    move v3, v6

    .line 166
    .end local v0           #alwaysAuto:Z
    .end local v2           #retvRoming_flexValues:Ljava/lang/String;
    :goto_6e
    return v3

    .line 157
    .restart local v0       #alwaysAuto:Z
    .restart local v2       #retvRoming_flexValues:Ljava/lang/String;
    :cond_6f
    const/4 v0, 0x0

    goto :goto_51

    .line 166
    .end local v0           #alwaysAuto:Z
    .end local v2           #retvRoming_flexValues:Ljava/lang/String;
    :cond_71
    const/4 v3, 0x0

    goto :goto_6e
.end method

.method public static getInstance()Lcom/android/mms/util/DownloadManager;
    .registers 2

    .prologue
    .line 129
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-nez v0, :cond_c

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    return-object v0
.end method

.method private getMessage(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    .line 205
    .local v1, ind:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 206
    .local v3, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 209
    .local v2, subject:Ljava/lang/String;
    :goto_17
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_4a

    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 214
    .local v0, from:Ljava/lang/String;
    :goto_2c
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0700f1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 206
    .end local v0           #from:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    :cond_3f
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0700ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_17

    .line 210
    .restart local v2       #subject:Ljava/lang/String;
    :cond_4a
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0700f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_2c
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const-string v1, "DownloadManager"

    .line 120
    const-string v0, "DownloadManager"

    const-string v0, "DownloadManager.init()"

    invoke-static {v1, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-eqz v0, :cond_14

    .line 123
    const-string v0, "DownloadManager"

    const-string v0, "Already initialized."

    invoke-static {v1, v0}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_14
    new-instance v0, Lcom/android/mms/util/DownloadManager;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    .line 126
    return-void
.end method

.method public static isRoaming()Z
    .registers 4

    .prologue
    .line 170
    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, roaming:Ljava/lang/String;
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roaming ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getState(Landroid/net/Uri;)I
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "st"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 221
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2e

    .line 223
    :try_start_1a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 224
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_31

    move-result v0

    and-int/lit8 v0, v0, -0x5

    .line 227
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 230
    :goto_2a
    return v0

    .line 227
    :cond_2b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_2e
    const/16 v0, 0x80

    goto :goto_2a

    .line 227
    :catchall_31
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isAuto()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return v0
.end method

.method public markState(Landroid/net/Uri;I)V
    .registers 9
    .parameter "uri"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 178
    const/16 v0, 0x87

    if-ne p2, v0, :cond_2c

    .line 179
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/util/DownloadManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/util/DownloadManager$3;-><init>(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    :cond_f
    :goto_f
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 196
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "st"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    return-void

    .line 189
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2c
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    if-nez v0, :cond_f

    .line 190
    or-int/lit8 p2, p2, 0x4

    goto :goto_f
.end method
