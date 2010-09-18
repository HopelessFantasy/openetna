.class public Lcom/android/settings/deviceinfo/Memory;
.super Landroid/preference/PreferenceActivity;
.source "Memory.java"


# static fields
.field private static final MASS_STORAGE:Ljava/lang/String; = "mass_storage"

.field private static final MEMORY_SD_AVAIL:Ljava/lang/String; = "memory_sd_avail"

.field private static final MEMORY_SD_FORMAT:Ljava/lang/String; = "memory_sd_format"

.field private static final MEMORY_SD_SIZE:Ljava/lang/String; = "memory_sd_size"

.field private static final MEMORY_SD_UNMOUNT:Ljava/lang/String; = "memory_sd_unmount"

.field private static final TAG:Ljava/lang/String; = "Memory"

.field public static fileComposition:Ljava/io/File;


# instance fields
.field private mMassStorage:Landroid/preference/CheckBoxPreference;

.field private mMountService:Landroid/os/IMountService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSdAvail:Landroid/preference/Preference;

.field private mSdFormat:Landroid/preference/Preference;

.field private mSdSize:Landroid/preference/Preference;

.field private mSdUnmount:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 74
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/msm_hsusb_periphera/composition"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/Memory;->fileComposition:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/IMountService;

    .line 91
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .registers 4
    .parameter "size"

    .prologue
    .line 271
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/IMountService;
    .registers 4

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/IMountService;

    if-nez v1, :cond_13

    .line 142
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 144
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_17

    .line 145
    invoke-static {v0}, Landroid/os/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/IMountService;

    .line 151
    .end local v0           #service:Landroid/os/IBinder;
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/IMountService;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    monitor-exit p0

    return-object v1

    .line 147
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_17
    :try_start_17
    const-string v1, "Memory"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_13

    .line 141
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private unmount(Ljava/lang/String;)V
    .registers 6
    .parameter "unmount_value"

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/IMountService;

    move-result-object v1

    .line 210
    .local v1, mountService:Landroid/os/IMountService;
    if-eqz v1, :cond_12

    .line 211
    :try_start_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IMountService;->unmountMedia(Ljava/lang/String;)V

    .line 220
    :goto_11
    return-void

    .line 214
    :cond_12
    const-string v2, "Memory"

    const-string v3, "Mount service is null, can\'t unmount"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 216
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 218
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    goto :goto_11
.end method

.method private updateMemoryStatus()V
    .registers 16

    .prologue
    .line 223
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, status:Ljava/lang/String;
    const-string v6, ""

    .line 226
    .local v6, readOnly:Ljava/lang/String;
    const-string v11, "mounted_ro"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 227
    const-string v8, "mounted"

    .line 228
    iget-object v11, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f080226

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    :cond_19
    iget-object v11, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 233
    const-string v11, "mounted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9c

    .line 235
    :try_start_27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 236
    .local v5, path:Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 237
    .local v7, stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 238
    .local v2, blockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v9, v11

    .line 239
    .local v9, totalBlocks:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 241
    .local v0, availableBlocks:J
    iget-object v11, p0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    mul-long v12, v9, v2

    invoke-direct {p0, v12, v13}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v11, p0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    mul-long v13, v0, v2

    invoke-direct {p0, v13, v14}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v11, p0, Lcom/android/settings/deviceinfo/Memory;->mSdUnmount:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_70} :catch_97

    .line 262
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #path:Ljava/io/File;
    .end local v7           #stat:Landroid/os/StatFs;
    .end local v9           #totalBlocks:J
    :cond_70
    :goto_70
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 263
    .restart local v5       #path:Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v7       #stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 265
    .restart local v2       #blockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 266
    .restart local v0       #availableBlocks:J
    const-string v11, "memory_internal_avail"

    invoke-virtual {p0, v11}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    mul-long v12, v0, v2

    invoke-direct {p0, v12, v13}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    return-void

    .line 245
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #path:Ljava/io/File;
    .end local v7           #stat:Landroid/os/StatFs;
    :catch_97
    move-exception v11

    move-object v4, v11

    .line 248
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "removed"

    .line 249
    goto :goto_70

    .line 251
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_9c
    iget-object v11, p0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v13, 0x7f080225

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v11, p0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v13, 0x7f080225

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v11, p0, Lcom/android/settings/deviceinfo/Memory;->mSdUnmount:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 255
    const-string v11, "unmounted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d6

    const-string v11, "nofs"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d6

    const-string v11, "unmountable"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_70

    .line 258
    :cond_d6
    iget-object v11, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_70
.end method


# virtual methods
.method public WriteToFile(Z)Z
    .registers 10
    .parameter "massStorageEnable"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 277
    :try_start_2
    sget-object v4, Lcom/android/settings/deviceinfo/Memory;->fileComposition:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 278
    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lcom/android/settings/deviceinfo/Memory;->fileComposition:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 279
    .local v3, txtwriter:Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 281
    .local v1, out:Ljava/io/BufferedWriter;
    if-eqz p1, :cond_26

    .line 282
    const-string v4, "6001"

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 287
    :goto_1d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 288
    const/4 v1, 0x0

    .line 289
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    move v4, v5

    .line 309
    .end local v1           #out:Ljava/io/BufferedWriter;
    .end local v3           #txtwriter:Ljava/io/FileWriter;
    :goto_25
    return v4

    .line 284
    .restart local v1       #out:Ljava/io/BufferedWriter;
    .restart local v3       #txtwriter:Ljava/io/FileWriter;
    :cond_26
    const-string v4, "6000"

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2b} :catch_2c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2b} :catch_5a

    goto :goto_1d

    .line 299
    .end local v1           #out:Ljava/io/BufferedWriter;
    .end local v3           #txtwriter:Ljava/io/FileWriter;
    :catch_2c
    move-exception v4

    move-object v0, v4

    .line 300
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move v4, v7

    .line 302
    goto :goto_25

    .line 292
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TEST::WriteToFile::cannotWrite"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/deviceinfo/Memory;->fileComposition:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 295
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_58} :catch_2c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_58} :catch_5a

    move v4, v7

    .line 297
    goto :goto_25

    .line 303
    .end local v2           #toast:Landroid/widget/Toast;
    :catch_5a
    move-exception v4

    move-object v0, v4

    .line 304
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move v4, v7

    .line 306
    goto :goto_25
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 104
    const-string v0, "mass_storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMassStorage:Landroid/preference/CheckBoxPreference;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    .line 106
    const-string v0, "memory_sd_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    .line 107
    const-string v0, "memory_sd_avail"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    .line 108
    const-string v0, "memory_sd_unmount"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdUnmount:Landroid/preference/Preference;

    .line 109
    const-string v0, "memory_sd_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    .line 110
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "adb_enabled"

    .line 158
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;

    move-result-object v3

    .line 160
    .local v3, mountService:Landroid/os/IMountService;
    const/4 v2, 0x0

    .line 162
    .local v2, massStorageEnabled:Z
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMassStorage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_39

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mass_storage_connection"

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mMassStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_43

    move v6, v8

    :goto_22
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMassStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 169
    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/Memory;->WriteToFile(Z)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    :cond_39
    :goto_39
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mSdUnmount:Landroid/preference/Preference;

    if-ne p2, v4, :cond_5d

    .line 192
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->unmount(Ljava/lang/String;)V

    move v4, v8

    .line 203
    :goto_42
    return v4

    :cond_43
    move v6, v7

    .line 163
    goto :goto_22

    .line 174
    :cond_45
    if-nez v3, :cond_49

    move v4, v7

    .line 175
    goto :goto_42

    .line 179
    :cond_49
    const/4 v4, 0x0

    :try_start_4a
    invoke-interface {v3, v4}, Landroid/os/IMountService;->setMassStorageEnabled(Z)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4d} :catch_5a

    .line 184
    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->WriteToFile(Z)Z

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_39

    .line 180
    :catch_5a
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    move v4, v7

    .line 181
    goto :goto_42

    .line 195
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5d
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    if-ne p2, v4, :cond_72

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/android/settings/MediaFormat;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 200
    goto :goto_42

    .end local v1           #intent:Landroid/content/Intent;
    :cond_72
    move v4, v7

    .line 203
    goto :goto_42
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 116
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMassStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mass_storage_connection"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_53

    const/4 v2, 0x1

    :goto_13
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/Memory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    .line 132
    return-void

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_53
    move v2, v4

    .line 116
    goto :goto_13
.end method
