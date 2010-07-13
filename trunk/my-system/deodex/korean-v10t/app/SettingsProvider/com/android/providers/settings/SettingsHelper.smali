.class public Lcom/android/providers/settings/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# static fields
.field private static final PROVIDERS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SettingsHelper"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContentService:Landroid/content/IContentService;

.field private mContext:Landroid/content/Context;

.field private mSilent:Z

.field private mVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gmail-ls"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contacts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsHelper;->PROVIDERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    .line 50
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 52
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mContentService:Landroid/content/IContentService;

    .line 53
    return-void
.end method

.method private setBrightness(I)V
    .registers 4
    .parameter "brightness"

    .prologue
    .line 97
    :try_start_0
    const-string v1, "hardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    .line 99
    .local v0, hardware:Landroid/os/IHardwareService;
    if-eqz v0, :cond_f

    .line 100
    invoke-interface {v0, p1}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 105
    .end local v0           #hardware:Landroid/os/IHardwareService;
    :cond_f
    :goto_f
    return-void

    .line 102
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private setGpsLocation(Ljava/lang/String;)V
    .registers 7
    .parameter "value"

    .prologue
    const-string v4, "gps"

    .line 77
    const-string v0, "gps"

    .line 78
    .local v0, GPS:Ljava/lang/String;
    const-string v2, "gps"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "gps,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, ",gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, ",gps,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_24
    const/4 v2, 0x1

    move v1, v2

    .line 83
    .local v1, enabled:Z
    :goto_26
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 85
    return-void

    .line 78
    .end local v1           #enabled:Z
    :cond_32
    const/4 v2, 0x0

    move v1, v2

    goto :goto_26
.end method

.method private setRingerMode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsHelper;->mSilent:Z

    if-eqz v0, :cond_13

    .line 109
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/android/providers/settings/SettingsHelper;->mVibrate:Z

    if-eqz v1, :cond_11

    move v1, v3

    :goto_d
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 117
    :goto_10
    return-void

    :cond_11
    move v1, v2

    .line 109
    goto :goto_d

    .line 112
    :cond_13
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 113
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/android/providers/settings/SettingsHelper;->mVibrate:Z

    if-eqz v1, :cond_24

    move v1, v3

    :goto_20
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_10

    :cond_24
    move v1, v2

    goto :goto_20
.end method

.method private setSoundEffects(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 88
    if-eqz p1, :cond_8

    .line 89
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 93
    :goto_7
    return-void

    .line 91
    :cond_8
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_7
.end method


# virtual methods
.method applyAudioSettings()V
    .registers 3

    .prologue
    .line 206
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->reloadAudioSettings()V

    .line 208
    return-void
.end method

.method getLocaleData()[B
    .registers 7

    .prologue
    .line 151
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 152
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 153
    .local v2, loc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, localeString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, country:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    :cond_31
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method getSyncProviders()[B
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    sget-object v3, Lcom/android/providers/settings/SettingsHelper;->PROVIDERS:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 122
    .local v2, sync:[B
    const/4 v3, 0x0

    :try_start_a
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContentService:Landroid/content/IContentService;

    invoke-interface {v4}, Landroid/content/IContentService;->getListenForNetworkTickles()Z

    move-result v4

    if-eqz v4, :cond_31

    move v4, v7

    :goto_13
    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    sget-object v3, Lcom/android/providers/settings/SettingsHelper;->PROVIDERS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3e

    .line 124
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContentService:Landroid/content/IContentService;

    sget-object v5, Lcom/android/providers/settings/SettingsHelper;->PROVIDERS:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-interface {v4, v5}, Landroid/content/IContentService;->getSyncProviderAutomatically(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    move v4, v7

    :goto_2b
    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2e} :catch_35

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .end local v0           #i:I
    :cond_31
    move v4, v6

    .line 122
    goto :goto_13

    .restart local v0       #i:I
    :cond_33
    move v4, v6

    .line 124
    goto :goto_2b

    .line 127
    .end local v0           #i:I
    :catch_35
    move-exception v3

    move-object v1, v3

    .line 128
    .local v1, re:Landroid/os/RemoteException;
    const-string v3, "SettingsHelper"

    const-string v4, "Unable to backup sync providers"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1           #re:Landroid/os/RemoteException;
    :cond_3e
    return-object v2
.end method

.method public restoreValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    const-string v0, "screen_brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setBrightness(I)V

    :cond_11
    :goto_11
    move v0, v1

    .line 73
    :goto_12
    return v0

    .line 67
    :cond_13
    const-string v0, "sound_effects_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_26

    move v0, v1

    :goto_22
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setSoundEffects(Z)V

    goto :goto_11

    :cond_26
    move v0, v2

    goto :goto_22

    .line 69
    :cond_28
    const-string v0, "location_providers_allowed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 70
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setGpsLocation(Ljava/lang/String;)V

    move v0, v2

    .line 71
    goto :goto_12
.end method

.method setLocaleData([B)V
    .registers 14
    .parameter "data"

    .prologue
    const/4 v11, 0x2

    .line 168
    iget-object v9, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 169
    .local v2, conf:Landroid/content/res/Configuration;
    iget-object v7, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 173
    .local v7, loc:Ljava/util/Locale;
    iget-boolean v9, v2, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v9, :cond_12

    .line 199
    :cond_11
    :goto_11
    return-void

    .line 175
    :cond_12
    iget-object v9, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, availableLocales:[Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>([B)V

    .line 177
    .local v8, localeCode:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v6, p1, v9, v11}, Ljava/lang/String;-><init>([BII)V

    .line 178
    .local v6, language:Ljava/lang/String;
    array-length v9, p1

    const/4 v10, 0x4

    if-le v9, v10, :cond_59

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x3

    invoke-direct {v9, p1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    move-object v4, v9

    .line 179
    .local v4, country:Ljava/lang/String;
    :goto_32
    const/4 v7, 0x0

    .line 180
    const/4 v5, 0x0

    .local v5, i:I
    :goto_34
    array-length v9, v1

    if-ge v5, v9, :cond_44

    .line 181
    aget-object v9, v1, v5

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 182
    new-instance v7, Ljava/util/Locale;

    .end local v7           #loc:Ljava/util/Locale;
    invoke-direct {v7, v6, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .restart local v7       #loc:Ljava/util/Locale;
    :cond_44
    if-eqz v7, :cond_11

    .line 189
    :try_start_46
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 190
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 191
    .local v3, config:Landroid/content/res/Configuration;
    iput-object v7, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 193
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 195
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_56} :catch_57

    goto :goto_11

    .line 196
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v3           #config:Landroid/content/res/Configuration;
    :catch_57
    move-exception v9

    goto :goto_11

    .line 178
    .end local v4           #country:Ljava/lang/String;
    .end local v5           #i:I
    :cond_59
    const-string v9, ""

    move-object v4, v9

    goto :goto_32

    .line 180
    .restart local v4       #country:Ljava/lang/String;
    .restart local v5       #i:I
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_34
.end method

.method setSyncProviders(Landroid/backup/BackupDataInput;)V
    .registers 12
    .parameter "backup"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "SettingsHelper"

    .line 135
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->getDataSize()I

    move-result v4

    new-array v3, v4, [B

    .line 138
    .local v3, sync:[B
    const/4 v4, 0x0

    :try_start_b
    array-length v5, v3

    invoke-virtual {p1, v3, v4, v5}, Landroid/backup/BackupDataInput;->readEntityData([BII)I

    .line 139
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContentService:Landroid/content/IContentService;

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    if-ne v5, v8, :cond_33

    move v5, v8

    :goto_17
    invoke-interface {v4, v5}, Landroid/content/IContentService;->setListenForNetworkTickles(Z)V

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    sget-object v4, Lcom/android/providers/settings/SettingsHelper;->PROVIDERS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_40

    .line 141
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContentService:Landroid/content/IContentService;

    sget-object v5, Lcom/android/providers/settings/SettingsHelper;->PROVIDERS:[Ljava/lang/String;

    aget-object v5, v5, v0

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v3, v6

    if-lez v6, :cond_35

    move v6, v8

    :goto_2d
    invoke-interface {v4, v5, v6}, Landroid/content/IContentService;->setSyncProviderAutomatically(Ljava/lang/String;Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_30} :catch_37
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_30} :catch_41

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .end local v0           #i:I
    :cond_33
    move v5, v7

    .line 139
    goto :goto_17

    .restart local v0       #i:I
    :cond_35
    move v6, v7

    .line 141
    goto :goto_2d

    .line 143
    .end local v0           #i:I
    :catch_37
    move-exception v4

    move-object v2, v4

    .line 144
    .local v2, re:Landroid/os/RemoteException;
    const-string v4, "SettingsHelper"

    const-string v4, "Unable to restore sync providers"

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v2           #re:Landroid/os/RemoteException;
    :cond_40
    :goto_40
    return-void

    .line 145
    :catch_41
    move-exception v4

    move-object v1, v4

    .line 146
    .local v1, ioe:Ljava/io/IOException;
    const-string v4, "SettingsHelper"

    const-string v4, "Unable to read sync settings"

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method
