.class public final Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;
.super Ljava/lang/Object;
.source "AndroidRadioDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/AndroidRadioDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioData"
.end annotation


# instance fields
.field public carrierName:Ljava/lang/String;

.field public cellId:I

.field public homeMobileCountryCode:I

.field public homeMobileNetworkCode:I

.field public locationAreaCode:I

.field public mobileCountryCode:I

.field public mobileNetworkCode:I

.field public radioType:I

.field public signalStrength:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->cellId:I

    .line 57
    iput v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->locationAreaCode:I

    .line 59
    iput v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->signalStrength:I

    .line 60
    iput v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->mobileCountryCode:I

    .line 61
    iput v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->mobileNetworkCode:I

    .line 62
    iput v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->homeMobileCountryCode:I

    .line 63
    iput v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->homeMobileNetworkCode:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->radioType:I

    .line 148
    return-void
.end method

.method public static getInstance(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;ILandroid/telephony/ServiceState;)Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;
    .registers 15
    .parameter "telephonyManager"
    .parameter "cellLocation"
    .parameter "signalStrength"
    .parameter "serviceState"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v6, 0x1

    const-string v7, "Gears-J-RadioProvider"

    .line 81
    instance-of v5, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v5, :cond_c

    .line 85
    const/4 v5, 0x0

    .line 145
    :goto_b
    return-object v5

    .line 88
    :cond_c
    new-instance v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;

    invoke-direct {v3}, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;-><init>()V

    .line 89
    .local v3, radioData:Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v1, v0

    .line 92
    .local v1, gsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    iput v5, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->cellId:I

    .line 93
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    iput v5, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->locationAreaCode:I

    .line 94
    iput p2, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->signalStrength:I

    .line 97
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, operator:Ljava/lang/String;
    invoke-direct {v3, v2, v6}, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->setMobileCodes(Ljava/lang/String;Z)V

    .line 100
    if-eqz p3, :cond_3a

    .line 102
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->carrierName:Ljava/lang/String;

    .line 105
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 106
    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->setMobileCodes(Ljava/lang/String;Z)V

    .line 111
    :cond_3a
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    .line 115
    .local v4, type:I
    if-eq v4, v10, :cond_44

    const/16 v5, 0x9

    if-ne v4, v5, :cond_13a

    .line 119
    :cond_44
    iput v9, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->radioType:I

    .line 134
    :cond_46
    :goto_46
    const-string v5, "Gears-J-RadioProvider"

    const-string v5, "Got the following data:"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v5, "Gears-J-RadioProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CellId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->cellId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v5, "Gears-J-RadioProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LAC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->locationAreaCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v5, "Gears-J-RadioProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->mobileNetworkCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v5, "Gears-J-RadioProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->mobileCountryCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v5, "Gears-J-RadioProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "home MNC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->homeMobileNetworkCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v5, "Gears-J-RadioProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "home MCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->homeMobileCountryCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v5, "Gears-J-RadioProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal strength: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->signalStrength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v5, "Gears-J-RadioProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Carrier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->carrierName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v5, "Gears-J-RadioProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->radioType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    .line 145
    goto/16 :goto_b

    .line 120
    :cond_13a
    if-eq v4, v6, :cond_13e

    if-ne v4, v9, :cond_142

    .line 122
    :cond_13e
    iput v6, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->radioType:I

    goto/16 :goto_46

    .line 123
    :cond_142
    if-ne v4, v8, :cond_148

    .line 124
    iput v10, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->radioType:I

    goto/16 :goto_46

    .line 125
    :cond_148
    const/4 v5, 0x5

    if-ne v4, v5, :cond_14f

    .line 126
    iput v8, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->radioType:I

    goto/16 :goto_46

    .line 127
    :cond_14f
    const/4 v5, 0x6

    if-ne v4, v5, :cond_156

    .line 128
    iput v8, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->radioType:I

    goto/16 :goto_46

    .line 129
    :cond_156
    const/4 v5, 0x7

    if-ne v4, v5, :cond_46

    .line 130
    const/4 v5, 0x5

    iput v5, v3, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->radioType:I

    goto/16 :goto_46
.end method

.method private setMobileCodes(Ljava/lang/String;Z)V
    .registers 9
    .parameter "codes"
    .parameter "homeValues"

    .prologue
    const-string v5, "Gears-J-RadioProvider"

    .line 157
    if-eqz p1, :cond_1d

    .line 161
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_6
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, mcc:I
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 163
    .local v2, mnc:I
    if-eqz p2, :cond_1e

    .line 164
    iput v1, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->homeMobileCountryCode:I

    .line 165
    iput v2, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->homeMobileNetworkCode:I

    .line 180
    .end local v1           #mcc:I
    .end local v2           #mnc:I
    :cond_1d
    :goto_1d
    return-void

    .line 167
    .restart local v1       #mcc:I
    .restart local v2       #mnc:I
    :cond_1e
    iput v1, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->mobileCountryCode:I

    .line 168
    iput v2, p0, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->mobileNetworkCode:I
    :try_end_22
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_22} :catch_23
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_22} :catch_3e

    goto :goto_1d

    .line 170
    .end local v1           #mcc:I
    .end local v2           #mnc:I
    :catch_23
    move-exception v3

    move-object v0, v3

    .line 171
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Gears-J-RadioProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AndroidRadioDataProvider: Invalid operator numeric data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 174
    .end local v0           #ex:Ljava/lang/IndexOutOfBoundsException;
    :catch_3e
    move-exception v3

    move-object v0, v3

    .line 175
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "Gears-J-RadioProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AndroidRadioDataProvider: Operator numeric format error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
