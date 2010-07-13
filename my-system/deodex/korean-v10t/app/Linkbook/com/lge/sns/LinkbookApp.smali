.class public Lcom/lge/sns/LinkbookApp;
.super Landroid/app/Application;
.source "LinkbookApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/LinkbookApp$1;,
        Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;,
        Lcom/lge/sns/LinkbookApp$UserIdentifyException;,
        Lcom/lge/sns/LinkbookApp$SimStateException;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Linkbook"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 262
    return-void
.end method

.method private static getSystemId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 16
    .parameter "tm"

    .prologue
    const/4 v13, 0x3

    const-string v14, "Invaild NetworkOperator data"

    const-string v12, "Linkbook"

    .line 141
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, ssn:Ljava/lang/String;
    const-string v10, "Linkbook"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SSN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v9}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1a3

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, flag:Z
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v7, sb:Ljava/lang/StringBuffer;
    const-string v10, "ssn="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, operator:Ljava/lang/String;
    const-string v10, "Linkbook"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM Operator="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {v6}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_7b

    .line 154
    :cond_5f
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 156
    const-string v10, "Linkbook"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network Operator="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_7b
    invoke-static {v6}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_182

    .line 160
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 161
    .local v2, l:I
    invoke-static {v6}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_179

    if-le v2, v13, :cond_179

    const/4 v10, 0x6

    if-gt v2, v10, :cond_179

    .line 162
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, mcc:Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, mnc:Ljava/lang/String;
    const-string v10, "Linkbook"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MCC="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v10, "Linkbook"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MNC="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {v3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_170

    invoke-static {v4}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_170

    .line 169
    const-string v10, "&mcc="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v10, "&mnc="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const/4 v0, 0x1

    .line 181
    .end local v2           #l:I
    .end local v3           #mcc:Ljava/lang/String;
    .end local v4           #mnc:Ljava/lang/String;
    :goto_e8
    if-nez v0, :cond_115

    .line 182
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, sid:Ljava/lang/String;
    const-string v10, "Linkbook"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {v8}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_18b

    .line 185
    const-string v10, "&sid="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    .end local v8           #sid:Ljava/lang/String;
    :cond_115
    :goto_115
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, msisdn:Ljava/lang/String;
    const-string v10, "Linkbook"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSISDN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {v5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_193

    .line 195
    const-string v10, "&msisdn="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :goto_140
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, imei:Ljava/lang/String;
    const-string v10, "Linkbook"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMEI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {v1}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_19b

    .line 204
    const-string v10, "&imei="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :goto_16b
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 213
    .end local v0           #flag:Z
    .end local v1           #imei:Ljava/lang/String;
    .end local v5           #msisdn:Ljava/lang/String;
    .end local v6           #operator:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuffer;
    :goto_16f
    return-object v10

    .line 173
    .restart local v0       #flag:Z
    .restart local v2       #l:I
    .restart local v3       #mcc:Ljava/lang/String;
    .restart local v4       #mnc:Ljava/lang/String;
    .restart local v6       #operator:Ljava/lang/String;
    .restart local v7       #sb:Ljava/lang/StringBuffer;
    :cond_170
    const-string v10, "Linkbook"

    const-string v10, "Invaild NetworkOperator data"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8

    .line 176
    .end local v3           #mcc:Ljava/lang/String;
    .end local v4           #mnc:Ljava/lang/String;
    :cond_179
    const-string v10, "Linkbook"

    const-string v10, "Invaild NetworkOperator data"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8

    .line 179
    .end local v2           #l:I
    :cond_182
    const-string v10, "Linkbook"

    const-string v10, "Unable to get NetworkOperator"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8

    .line 187
    .restart local v8       #sid:Ljava/lang/String;
    :cond_18b
    const-string v10, "Linkbook"

    const-string v10, "Unable to get SubscriberId"

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    .line 197
    .end local v8           #sid:Ljava/lang/String;
    .restart local v5       #msisdn:Ljava/lang/String;
    :cond_193
    const-string v10, "Linkbook"

    const-string v10, "Unable to get Line1Number"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140

    .line 206
    .restart local v1       #imei:Ljava/lang/String;
    :cond_19b
    const-string v10, "Linkbook"

    const-string v10, "Unable to get IMEI"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16b

    .line 211
    .end local v0           #flag:Z
    .end local v1           #imei:Ljava/lang/String;
    .end local v5           #msisdn:Ljava/lang/String;
    .end local v6           #operator:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuffer;
    :cond_1a3
    const-string v10, "Linkbook"

    const-string v10, "Unable to get SIM Serial Number"

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v10, 0x0

    goto :goto_16f
.end method

.method public static initLinkBook(Landroid/content/Context;)V
    .registers 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/LinkbookApp$SimStateException;,
            Lcom/lge/sns/LinkbookApp$UserIdentifyException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    move-object v0, v1

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v2, v0

    .line 89
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .local v1, simState:I
    const/4 v3, 0x5

    if-eq v1, v3, :cond_4c

    .line 90
    const-string p0, "Linkbook"

    .end local p0
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM is not ready. state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/sns/SnsManager;->setActivated(Z)V

    .line 92
    new-instance p0, Lcom/lge/sns/LinkbookApp$SimStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM is not ready. state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lge/sns/LinkbookApp$SimStateException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 96
    .restart local v2       #tm:Landroid/telephony/TelephonyManager;
    .restart local p0
    :cond_4c
    const-string v1, "Linkbook"

    .end local v1           #simState:I
    const-string v3, "SIM is ready. execute initialzation"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v1

    .line 100
    .local v1, settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    invoke-interface {v1}, Lcom/lge/sns/setting/ISettingFacade;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 102
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/lge/sns/LinkbookApp;->getSystemId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, systemId:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, msisdn:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    if-eqz v1, :cond_84

    .line 105
    const-string p0, "Linkbook"

    .end local p0
    const-string v1, "Unable to identify user from SIM"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/sns/SnsManager;->setActivated(Z)V

    .line 107
    new-instance p0, Lcom/lge/sns/LinkbookApp$UserIdentifyException;

    const-string v1, "Unable to get Line1Number(MSISDN) from SIM"

    invoke-direct {p0, v1}, Lcom/lge/sns/LinkbookApp$UserIdentifyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    .restart local p0
    :cond_84
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/lge/sns/SnsManager;->setActivated(Z)V

    .line 110
    const-string v1, "SessionToken"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, sessionToken:Ljava/lang/String;
    const-string v1, "SystemId"

    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, idStored:Ljava/lang/String;
    const-string v6, "Linkbook"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "systemId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v6, "Linkbook"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "idStored="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v6, "Linkbook"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sessionToken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v6, "uid"

    invoke-static {v6, v5}, Lcom/lge/newbay/client/NewbayFactory;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz v2, :cond_ee

    .line 121
    const-string v6, "mssidn"

    invoke-static {v6, v2}, Lcom/lge/newbay/client/NewbayFactory;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_ee
    if-eqz v4, :cond_f6

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #idStored:Ljava/lang/String;
    if-nez v1, :cond_11e

    .line 126
    :cond_f6
    const-string v1, "Linkbook"

    const-string v2, "LinkbookApp is not activated or Subscriber Id was changed. Initializing SN Manager"

    .end local v2           #msisdn:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v1, Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/lge/sns/LinkbookApp$1;)V

    invoke-static {v1}, Lcom/lge/newbay/client/NewbayFactory;->setSessonTokenInitializer(Lcom/lge/newbay/client/ISessonTokenInitializer;)V

    .line 129
    if-eqz v4, :cond_11c

    const/4 v1, 0x1

    :goto_109
    invoke-static {v1, p0}, Lcom/lge/sns/LinkbookApp;->initialize(ZLandroid/content/Context;)V

    .line 130
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 131
    .local p0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v1, "SystemId"

    invoke-interface {p0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    .end local p0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_11b
    return-void

    .line 129
    .local p0, context:Landroid/content/Context;
    :cond_11c
    const/4 v1, 0x0

    goto :goto_109

    .line 135
    .restart local v2       #msisdn:Ljava/lang/String;
    :cond_11e
    const-string p0, "sessionToken"

    .end local p0           #context:Landroid/content/Context;
    invoke-static {p0, v4}, Lcom/lge/newbay/client/NewbayFactory;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11b
.end method

.method private static initialize(ZLandroid/content/Context;)V
    .registers 9
    .parameter "haveBeenActivated"
    .parameter "context"

    .prologue
    .line 219
    if-eqz p0, :cond_30

    .line 220
    new-instance v1, Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-direct {v1, p1}, Lcom/lge/sns/SnsDatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    .line 221
    .local v1, dbOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;
    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->reset()V

    .line 222
    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->close()V

    .line 223
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v6

    invoke-interface {v6}, Lcom/lge/sns/setting/ISettingFacade;->clearUpdateTime()V

    .line 224
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v4

    .line 225
    .local v4, mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;
    sget-object v0, Lcom/lge/sns/account/Account;->snsIds:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_24
    if-ge v2, v3, :cond_30

    aget-object v5, v0, v2

    .line 227
    .local v5, snsId:Ljava/lang/String;
    :try_start_28
    invoke-interface {v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->deleteAllProfileInContact(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2e

    .line 225
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 228
    :catch_2e
    move-exception v6

    goto :goto_2b

    .line 232
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dbOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;
    .end local v5           #snsId:Ljava/lang/String;
    :cond_30
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 242
    :try_start_3
    invoke-virtual {p0}, Lcom/lge/sns/LinkbookApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/sns/LinkbookApp;->initLinkBook(Landroid/content/Context;)V
    :try_end_a
    .catch Lcom/lge/sns/SnsException; {:try_start_3 .. :try_end_a} :catch_b

    .line 249
    :goto_a
    return-void

    .line 246
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v1, "Linkbook"

    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 257
    const-string v0, "Linkbook"

    const-string v1, "Receive OnLowMemory event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/CacheManager;->clearCache()V

    .line 260
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 253
    return-void
.end method
