.class public Lcom/lge/hiddenmenu/version_info/SoftwareVersionInfo;
.super Landroid/preference/PreferenceActivity;
.source "SoftwareVersionInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftwareVersionInfo"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v8, 0x4

    const-string v6, "\n"

    const-string v10, "Unavailable"

    const-string v9, "SoftwareVersionInfo"

    .line 87
    :try_start_7
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_4f

    .line 89
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_4a

    move-result-object v4

    .line 91
    .local v4, procVersionStr:Ljava/lang/String;
    :try_start_19
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 94
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\([^)]+\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 104
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\([^)]+\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 105
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 107
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_5c

    .line 108
    const-string v6, "SoftwareVersionInfo"

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

    .line 109
    const-string v6, "Unavailable"

    move-object v6, v10

    .line 125
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :goto_49
    return-object v6

    .line 91
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_4a
    move-exception v6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_4f} :catch_4f

    .line 120
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_4f
    move-exception v6

    move-object v1, v6

    .line 121
    .local v1, e:Ljava/io/IOException;
    const-string v6, "SoftwareVersionInfo"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v9, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const-string v6, "Unavailable"

    move-object v6, v10

    goto :goto_49

    .line 110
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

    .line 111
    const-string v6, "SoftwareVersionInfo"

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

    .line 113
    const-string v6, "Unavailable"

    move-object v6, v10

    goto :goto_49

    .line 115
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

.method private setModemVersion(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, modem_version:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 66
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    :try_start_5
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getModemVersion()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v2, "SoftwareVersionInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modem_version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_21} :catch_2d

    .line 74
    :goto_21
    :try_start_21
    const-string v2, "modem_version"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/version_info/SoftwareVersionInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_2a} :catch_2b

    .line 79
    :goto_2a
    return-void

    .line 76
    :catch_2b
    move-exception v2

    goto :goto_2a

    .line 70
    :catch_2d
    move-exception v2

    goto :goto_21
.end method

.method private setOSVersion(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 54
    :try_start_0
    const-string v0, "ap_os_version"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/version_info/SoftwareVersionInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/lge/hiddenmenu/version_info/SoftwareVersionInfo;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    .line 57
    :goto_d
    return-void

    .line 55
    :catch_e
    move-exception v0

    goto :goto_d
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/version_info/SoftwareVersionInfo;->addPreferencesFromResource(I)V

    .line 42
    invoke-direct {p0, p0}, Lcom/lge/hiddenmenu/version_info/SoftwareVersionInfo;->setOSVersion(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/version_info/SoftwareVersionInfo;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "ap_app_version"

    const-string v2, "ro.build.version.incremental"

    invoke-static {v0, v1, v2, p0}, Lcom/lge/hiddenmenu/HiddenMenu;->setSummaryWithProperty(Landroid/preference/PreferenceManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/version_info/SoftwareVersionInfo;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "ap_bootloader_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/lge/hiddenmenu/HiddenMenu;->setSummaryWithProperty(Landroid/preference/PreferenceManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p0}, Lcom/lge/hiddenmenu/version_info/SoftwareVersionInfo;->setModemVersion(Landroid/content/Context;)V

    .line 50
    return-void
.end method
