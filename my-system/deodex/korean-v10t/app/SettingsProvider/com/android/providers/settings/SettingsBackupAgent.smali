.class public Lcom/android/providers/settings/SettingsBackupAgent;
.super Landroid/backup/BackupHelperAgent;
.source "SettingsBackupAgent.java"


# static fields
.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_VALUE:I = 0x2

.field private static final EMPTY_DATA:[B = null

.field private static final FILE_BT_ROOT:Ljava/lang/String; = "/data/misc/hcid/"

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_SECURE:Ljava/lang/String; = "secure"

.field private static final KEY_SYNC:Ljava/lang/String; = "sync_providers"

.field private static final KEY_SYSTEM:Ljava/lang/String; = "system"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final STATE_LOCALE:I = 0x3

.field private static final STATE_SECURE:I = 0x1

.field private static final STATE_SIZE:I = 0x5

.field private static final STATE_SYNC:I = 0x2

.field private static final STATE_SYSTEM:I = 0x0

.field private static final STATE_WIFI:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SettingsBackupAgent"

.field private static sortedSecureKeys:[Ljava/lang/String;

.field private static sortedSystemKeys:[Ljava/lang/String;


# instance fields
.field private mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 68
    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSystemKeys:[Ljava/lang/String;

    .line 69
    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSecureKeys:[Ljava/lang/String;

    .line 71
    new-array v0, v2, [B

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/backup/BackupHelperAgent;-><init>()V

    return-void
.end method

.method private copyAndSort([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "keys"

    .prologue
    const/4 v2, 0x0

    .line 253
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/String;

    .line 254
    .local v0, sortedKeys:[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 256
    return-object v0
.end method

.method private enableBluetooth(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 384
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 385
    .local v0, bt:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_f

    .line 386
    if-nez p1, :cond_10

    .line 387
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->disable()Z

    .line 392
    :cond_f
    :goto_f
    return-void

    .line 389
    :cond_10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->enable()Z

    goto :goto_f
.end method

.method private enableWifi(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 377
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 378
    .local v0, wfm:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_d

    .line 379
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 381
    :cond_d
    return-void
.end method

.method private getFileData(Ljava/lang/String;)[B
    .registers 11
    .parameter "filename"

    .prologue
    .line 315
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 317
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 318
    .local v0, bytes:[B
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 319
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 320
    .local v5, offset:I
    const/4 v3, 0x0

    .line 322
    .local v3, got:I
    :cond_19
    array-length v6, v0

    sub-int/2addr v6, v5

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 323
    if-lez v3, :cond_22

    add-int/2addr v5, v3

    .line 324
    :cond_22
    array-length v6, v0

    if-ge v5, v6, :cond_27

    if-gtz v3, :cond_19

    :cond_27
    move-object v6, v0

    .line 331
    .end local v0           #bytes:[B
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #got:I
    .end local v5           #offset:I
    :goto_28
    return-object v6

    .line 327
    .restart local v1       #file:Ljava/io/File;
    :cond_29
    sget-object v6, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_28

    .line 329
    .end local v1           #file:Ljava/io/File;
    :catch_2c
    move-exception v6

    move-object v4, v6

    .line 330
    .local v4, ioe:Ljava/io/IOException;
    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t backup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v6, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B

    goto :goto_28
.end method

.method private getSecureSettings()[B
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    const-string v5, "name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 213
    .local v7, sortedCursor:Landroid/database/Cursor;
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSecureKeys:[Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 214
    sget-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyAndSort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSecureKeys:[Ljava/lang/String;

    .line 216
    :cond_1c
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSecureKeys:[Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B

    move-result-object v6

    .line 217
    .local v6, result:[B
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 218
    return-object v6
.end method

.method private getSystemSettings()[B
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    const-string v5, "name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 201
    .local v7, sortedCursor:Landroid/database/Cursor;
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSystemKeys:[Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 202
    sget-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyAndSort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSystemKeys:[Ljava/lang/String;

    .line 204
    :cond_1c
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSystemKeys:[Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B

    move-result-object v6

    .line 205
    .local v6, result:[B
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 206
    return-object v6
.end method

.method private readInt([BI)I
    .registers 6
    .parameter "in"
    .parameter "pos"

    .prologue
    .line 368
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 373
    .local v0, result:I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .registers 9
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    .line 155
    new-array v3, v6, [J

    .line 157
    .local v3, stateChecksums:[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 159
    .local v0, dataInput:Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v6, :cond_1f

    .line 161
    :try_start_14
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_1a
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_1a} :catch_1d

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 162
    :catch_1d
    move-exception v4

    move-object v1, v4

    .line 166
    :cond_1f
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 167
    return-object v3
.end method

.method private restoreFile(Ljava/lang/String;Landroid/backup/BackupDataInput;)V
    .registers 9
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 336
    invoke-virtual {p2}, Landroid/backup/BackupDataInput;->getDataSize()I

    move-result v3

    new-array v0, v3, [B

    .line 337
    .local v0, bytes:[B
    array-length v3, v0

    if-gtz v3, :cond_a

    .line 345
    :goto_9
    return-void

    .line 339
    :cond_a
    const/4 v3, 0x0

    :try_start_b
    array-length v4, v0

    invoke-virtual {p2, v0, v3, v4}, Landroid/backup/BackupDataInput;->readEntityData([BII)I

    .line 340
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_9

    .line 342
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_18
    move-exception v3

    move-object v2, v3

    .line 343
    .local v2, ioe:Ljava/io/IOException;
    const-string v3, "SettingsBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private restoreSettings(Landroid/backup/BackupDataInput;Landroid/net/Uri;)V
    .registers 13
    .parameter "data"
    .parameter "contentUri"

    .prologue
    const/4 v9, 0x0

    .line 222
    new-instance v0, Landroid/content/ContentValues;

    const/4 v7, 0x2

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 223
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->getDataSize()I

    move-result v7

    new-array v6, v7, [B

    .line 225
    .local v6, settings:[B
    const/4 v7, 0x0

    :try_start_e
    array-length v8, v6

    invoke-virtual {p1, v6, v7, v8}, Landroid/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_5d

    .line 230
    const/4 v3, 0x0

    .line 231
    .local v3, pos:I
    :cond_13
    :goto_13
    array-length v7, v6

    if-ge v3, v7, :cond_66

    .line 232
    invoke-direct {p0, v6, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v2

    .line 233
    .local v2, length:I
    add-int/lit8 v3, v3, 0x4

    .line 234
    if-lez v2, :cond_67

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v3, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v4, v7

    .line 235
    .local v4, settingName:Ljava/lang/String;
    :goto_24
    add-int/2addr v3, v2

    .line 236
    invoke-direct {p0, v6, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v2

    .line 237
    add-int/lit8 v3, v3, 0x4

    .line 238
    if-lez v2, :cond_69

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v3, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v7

    .line 239
    .local v5, settingValue:Ljava/lang/String;
    :goto_33
    add-int/2addr v3, v2

    .line 240
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 242
    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v7, v4, v5}, Lcom/android/providers/settings/SettingsHelper;->restoreValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 243
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 244
    const-string v7, "name"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v7, "value"

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_13

    .line 226
    .end local v2           #length:I
    .end local v3           #pos:I
    .end local v4           #settingName:Ljava/lang/String;
    .end local v5           #settingValue:Ljava/lang/String;
    :catch_5d
    move-exception v7

    move-object v1, v7

    .line 227
    .local v1, ioe:Ljava/io/IOException;
    const-string v7, "SettingsBackupAgent"

    const-string v8, "Couldn\'t read entity data"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_66
    return-void

    .restart local v2       #length:I
    .restart local v3       #pos:I
    :cond_67
    move-object v4, v9

    .line 234
    goto :goto_24

    .restart local v4       #settingName:Ljava/lang/String;
    :cond_69
    move-object v5, v9

    .line 238
    goto :goto_33
.end method

.method private writeBytes([BI[B)I
    .registers 6
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 363
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    array-length v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/backup/BackupDataOutput;)J
    .registers 11
    .parameter "oldChecksum"
    .parameter "key"
    .parameter "data"
    .parameter "output"

    .prologue
    .line 182
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 183
    .local v0, checkSummer:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 184
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 185
    .local v1, newChecksum:J
    cmp-long v3, p1, v1

    if-nez v3, :cond_12

    move-wide v3, p1

    .line 194
    :goto_11
    return-wide v3

    .line 189
    :cond_12
    :try_start_12
    array-length v3, p4

    invoke-virtual {p5, p3, v3}, Landroid/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 190
    array-length v3, p4

    invoke-virtual {p5, p4, v3}, Landroid/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_1c

    :goto_1a
    move-wide v3, v1

    .line 194
    goto :goto_11

    .line 191
    :catch_1c
    move-exception v3

    goto :goto_1a
.end method

.method private writeInt([BII)I
    .registers 6
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 355
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 356
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 357
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 358
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 359
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .registers 7
    .parameter "checksums"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 174
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1a

    .line 175
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 177
    :cond_1a
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 178
    return-void
.end method


# virtual methods
.method extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    .registers 15
    .parameter "sortedCursor"
    .parameter "sortedKeys"

    .prologue
    .line 267
    array-length v10, p2

    mul-int/lit8 v10, v10, 0x2

    new-array v9, v10, [[B

    .line 268
    .local v9, values:[[B
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_16

    .line 269
    const-string v10, "SettingsBackupAgent"

    const-string v11, "Couldn\'t read from the cursor"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v10, 0x0

    new-array v10, v10, [B

    .line 310
    :goto_15
    return-object v10

    .line 272
    :cond_16
    const/4 v1, 0x0

    .line 273
    .local v1, keyIndex:I
    const/4 v6, 0x0

    .line 274
    .local v6, totalSize:I
    :cond_18
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_6e

    .line 275
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, name:Ljava/lang/String;
    :cond_23
    aget-object v10, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_34

    .line 277
    add-int/lit8 v1, v1, 0x1

    .line 278
    array-length v10, p2

    if-ne v1, v10, :cond_23

    .line 280
    :cond_34
    array-length v10, p2

    if-ge v1, v10, :cond_65

    aget-object v10, p2, v1

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_65

    .line 281
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 283
    .local v3, nameBytes:[B
    array-length v10, v3

    add-int/lit8 v10, v10, 0x4

    add-int/2addr v6, v10

    .line 284
    mul-int/lit8 v10, v1, 0x2

    aput-object v3, v9, v10

    .line 286
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 287
    const/4 v8, 0x0

    .line 288
    .local v8, valueBytes:[B
    add-int/lit8 v6, v6, 0x4

    .line 294
    :goto_5d
    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x1

    aput-object v8, v9, v10

    .line 295
    add-int/lit8 v1, v1, 0x1

    .line 297
    .end local v3           #nameBytes:[B
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #valueBytes:[B
    :cond_65
    array-length v10, p2

    if-eq v1, v10, :cond_6e

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_18

    .line 302
    .end local v2           #name:Ljava/lang/String;
    :cond_6e
    new-array v5, v6, [B

    .line 303
    .local v5, result:[B
    const/4 v4, 0x0

    .line 304
    .local v4, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_72
    array-length v10, p2

    mul-int/lit8 v10, v10, 0x2

    if-ge v0, v10, :cond_98

    .line 305
    aget-object v10, v9, v0

    if-eqz v10, :cond_88

    .line 306
    aget-object v10, v9, v0

    array-length v10, v10

    invoke-direct {p0, v5, v4, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->writeInt([BII)I

    move-result v4

    .line 307
    aget-object v10, v9, v0

    invoke-direct {p0, v5, v4, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->writeBytes([BI[B)I

    move-result v4

    .line 304
    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 290
    .end local v0           #i:I
    .end local v4           #pos:I
    .end local v5           #result:[B
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #nameBytes:[B
    .restart local v7       #value:Ljava/lang/String;
    :cond_8b
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 291
    .restart local v8       #valueBytes:[B
    array-length v10, v8

    add-int/lit8 v10, v10, 0x4

    add-int/2addr v6, v10

    goto :goto_5d

    .end local v2           #name:Ljava/lang/String;
    .end local v3           #nameBytes:[B
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #valueBytes:[B
    .restart local v0       #i:I
    .restart local v4       #pos:I
    .restart local v5       #result:[B
    :cond_98
    move-object v10, v5

    .line 310
    goto/16 :goto_15
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 34
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .line 100
    .local v7, systemSettingsData:[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v12

    .line 101
    .local v12, secureSettingsData:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->getSyncProviders()[B

    move-result-object v17

    .line 102
    .local v17, syncProviders:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v22

    .line 103
    .local v22, locale:[B
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v27

    .line 105
    .local v27, wifiData:[B
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsBackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v29

    .line 107
    .local v29, stateChecksums:[J
    const/4 v9, 0x0

    const/4 v3, 0x0

    aget-wide v4, v29, v3

    const-string v6, "system"

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/backup/BackupDataOutput;)J

    move-result-wide v3

    aput-wide v3, v29, v9

    .line 109
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v9, v29, v4

    const-string v11, "secure"

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 111
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v14, v29, v4

    const-string v16, "sync_providers"

    move-object/from16 v13, p0

    move-object/from16 v18, p2

    invoke-direct/range {v13 .. v18}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 113
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v19, v29, v4

    const-string v21, "locale"

    move-object/from16 v18, p0

    move-object/from16 v23, p2

    invoke-direct/range {v18 .. v23}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 115
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v24, v29, v4

    const-string v26, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v23, p0

    move-object/from16 v28, p2

    invoke-direct/range {v23 .. v28}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 119
    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 91
    new-instance v0, Lcom/android/providers/settings/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 92
    invoke-super {p0}, Landroid/backup/BackupHelperAgent;->onCreate()V

    .line 93
    return-void
.end method

.method public onRestore(Landroid/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 12
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    .line 125
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)V

    .line 126
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->enableBluetooth(Z)V

    .line 128
    :goto_9
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->readNextHeader()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 129
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->getDataSize()I

    move-result v2

    .line 131
    .local v2, size:I
    const-string v3, "system"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 132
    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/backup/BackupDataInput;Landroid/net/Uri;)V

    .line 133
    iget-object v3, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->applyAudioSettings()V

    goto :goto_9

    .line 134
    :cond_2a
    const-string v3, "secure"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 135
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/backup/BackupDataInput;Landroid/net/Uri;)V

    goto :goto_9

    .line 136
    :cond_38
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 137
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v7, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFile(Ljava/lang/String;Landroid/backup/BackupDataInput;)V

    .line 138
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v3, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3f2

    invoke-static {v7, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_9

    .line 142
    :cond_53
    const-string v3, "sync_providers"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 143
    iget-object v3, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v3, p1}, Lcom/android/providers/settings/SettingsHelper;->setSyncProviders(Landroid/backup/BackupDataInput;)V

    goto :goto_9

    .line 144
    :cond_61
    const-string v3, "locale"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 145
    new-array v1, v2, [B

    .line 146
    .local v1, localeData:[B
    invoke-virtual {p1, v1, v6, v2}, Landroid/backup/BackupDataInput;->readEntityData([BII)I

    .line 147
    iget-object v3, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v3, v1}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([B)V

    goto :goto_9

    .line 149
    .end local v1           #localeData:[B
    :cond_74
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->skipEntityData()V

    goto :goto_9

    .line 152
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #size:I
    :cond_78
    return-void
.end method
