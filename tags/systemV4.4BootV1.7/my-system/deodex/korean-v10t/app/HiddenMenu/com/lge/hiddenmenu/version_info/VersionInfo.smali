.class public Lcom/lge/hiddenmenu/version_info/VersionInfo;
.super Landroid/preference/PreferenceActivity;
.source "VersionInfo.java"


# static fields
.field private static BTCheckCounter:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.VersionInfo"


# instance fields
.field mDeviceCallback:Landroid/bluetooth/IBluetoothDeviceCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/lge/hiddenmenu/version_info/VersionInfo;->BTCheckCounter:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 213
    new-instance v0, Lcom/lge/hiddenmenu/version_info/VersionInfo$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/version_info/VersionInfo$1;-><init>(Lcom/lge/hiddenmenu/version_info/VersionInfo;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/version_info/VersionInfo;->mDeviceCallback:Landroid/bluetooth/IBluetoothDeviceCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/version_info/VersionInfo;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->setBTAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 45
    sget v0, Lcom/lge/hiddenmenu/version_info/VersionInfo;->BTCheckCounter:I

    return v0
.end method

.method static synthetic access$108()I
    .registers 2

    .prologue
    .line 45
    sget v0, Lcom/lge/hiddenmenu/version_info/VersionInfo;->BTCheckCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lge/hiddenmenu/version_info/VersionInfo;->BTCheckCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/version_info/VersionInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->checkBTStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkBTStatus()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "HiddenMenu.VersionInfo"

    .line 236
    const-string v1, "HiddenMenu.VersionInfo"

    const-string v1, "VersionInfo - checkBTStatus "

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 240
    .local v0, mManager:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_25

    .line 241
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_38

    .line 245
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    :goto_24
    return-object v1

    .line 249
    :cond_25
    const-string v1, "HiddenMenu.VersionInfo"

    const-string v1, "VersionInfo - checkBTStatus : Bluetooth Service is not available"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    .line 253
    :cond_38
    const/4 v1, 0x0

    goto :goto_24
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v8, 0x4

    const-string v6, "\n"

    const-string v10, "Unavailable"

    const-string v9, "HiddenMenu.VersionInfo"

    .line 170
    :try_start_7
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_4f

    .line 172
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_4a

    move-result-object v4

    .line 174
    .local v4, procVersionStr:Ljava/lang/String;
    :try_start_19
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 177
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\([^)]+\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 187
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\([^)]+\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 188
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 190
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_5c

    .line 191
    const-string v6, "HiddenMenu.VersionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Regex did not match on /proc/version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v6, "Unavailable"

    move-object v6, v10

    .line 207
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :goto_49
    return-object v6

    .line 174
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_4a
    move-exception v6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_4f} :catch_4f

    .line 202
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_4f
    move-exception v6

    move-object v1, v6

    .line 203
    .local v1, e:Ljava/io/IOException;
    const-string v6, "HiddenMenu.VersionInfo"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v9, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const-string v6, "Unavailable"

    move-object v6, v10

    goto :goto_49

    .line 193
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #PROC_VERSION_REGEX:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .restart local v3       #p:Ljava/util/regex/Pattern;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_5c
    :try_start_5c
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-ge v6, v8, :cond_88

    .line 194
    const-string v6, "HiddenMenu.VersionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Regex match on /proc/version only returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " groups"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v6, "Unavailable"

    move-object v6, v10

    goto :goto_49

    .line 198
    :cond_88
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_c2} :catch_4f

    move-result-object v6

    goto :goto_49
.end method

.method private setBTAddress(Ljava/lang/String;)V
    .registers 6
    .parameter "title"

    .prologue
    .line 257
    move-object v0, p1

    .line 258
    .local v0, address:Ljava/lang/String;
    const-string v2, "bluetooth"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 260
    .local v1, mManager:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_22

    .line 261
    if-eqz v1, :cond_2c

    .line 262
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 264
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_22
    const-string v2, "BD_address"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    return-void

    .line 268
    :cond_2c
    const-string v2, "HiddenMenu.VersionInfo"

    const-string v3, "VersionInfo - setBTAddress : Bluetooth Service is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private setFactoryVersion(Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter "phone"

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 142
    .local v0, factory_version:Ljava/lang/String;
    :try_start_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getFactoryVersion()Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "factory_version"

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    const-string v1, "HiddenMenu.VersionInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "factory_version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_26} :catch_27

    .line 149
    :goto_26
    return-void

    .line 147
    :catch_27
    move-exception v1

    goto :goto_26
.end method

.method private setHardwardVersion(Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter "phone"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 95
    .local v0, hardware_version:Ljava/lang/String;
    :try_start_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getHWVersion()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "hardware_version"

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    const-string v1, "HiddenMenu.VersionInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hardware_version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_26} :catch_27

    .line 102
    :goto_26
    return-void

    .line 100
    :catch_27
    move-exception v1

    goto :goto_26
.end method

.method private setKernelVersion(Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter "phone"

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 157
    .local v0, kernel_version:Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "kernel_version"

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    const-string v1, "HiddenMenu.VersionInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kernel_version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_26} :catch_27

    .line 164
    :goto_26
    return-void

    .line 162
    :catch_27
    move-exception v1

    goto :goto_26
.end method

.method private setSoftwareVersion(Lcom/android/internal/telephony/Phone;)V
    .registers 9
    .parameter "phone"

    .prologue
    .line 106
    const/4 v3, 0x0

    .line 107
    .local v3, software_version:Ljava/lang/String;
    const/4 v1, 0x0

    .line 108
    .local v1, firmware_version:Ljava/lang/String;
    const/4 v0, 0x0

    .line 109
    .local v0, baseband_version:Ljava/lang/String;
    const/4 v2, 0x0

    .line 112
    .local v2, kernel_version:Ljava/lang/String;
    :try_start_4
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getModemVersion()Ljava/lang/String;

    move-result-object v3

    .line 113
    const-string v4, "software_version"

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 116
    const-string v4, "firmware_version"

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    const-string v4, "baseband_version"

    const-string v5, "gsm.version.baseband"

    invoke-direct {p0, v4, v5}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v4, "HiddenMenu.VersionInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "software_version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_3b} :catch_3c

    .line 123
    :goto_3b
    return-void

    .line 121
    :catch_3c
    move-exception v4

    goto :goto_3b
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_16} :catch_17

    .line 134
    :goto_16
    return-void

    .line 131
    :catch_17
    move-exception v0

    goto :goto_16
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v1, 0x7f040006

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->addPreferencesFromResource(I)V

    .line 59
    const-string v1, "HiddenMenu.VersionInfo"

    const-string v2, "getDefaultPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 64
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->setSoftwareVersion(Lcom/android/internal/telephony/Phone;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->setHardwardVersion(Lcom/android/internal/telephony/Phone;)V

    .line 72
    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->setFactoryVersion(Lcom/android/internal/telephony/Phone;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->setKernelVersion(Lcom/android/internal/telephony/Phone;)V

    .line 80
    return-void
.end method
