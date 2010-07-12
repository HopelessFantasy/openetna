.class public final Landroid/provider/Settings$FlexInfo_Operator;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlexInfo_Operator"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEFAULT_FLEX_PATH:Ljava/lang/String; = "etc/flex/flex.xml"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final MCC_CODE:Ljava/lang/String; = "MCC"

.field public static final MNC_CODE:Ljava/lang/String; = "MNC"

.field public static final SPN_CODE:Ljava/lang/String; = "SPN"

.field private static final TAG:Ljava/lang/String; = "FlexInfo_Operator"

.field public static final operator_key:Ljava/lang/String; = "operatorkey"

.field private static final sIntentProjection:[Ljava/lang/String; = null

.field private static final sIntentProjection_open:[Ljava/lang/String; = null

.field public static sMcc:Ljava/lang/String; = null

.field public static sMnc:Ljava/lang/String; = null

.field private static final sShortcutSelection:Ljava/lang/String; = "MCC=? and MNC=?"

.field private static final sShortcutSelection_open:Ljava/lang/String; = "MCC=? and MNC=?"

.field public static sSpn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3857
    const-string v0, "content://settings/flexoperator"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$FlexInfo_Operator;->CONTENT_URI:Landroid/net/Uri;

    .line 3869
    const-string v0, "450"

    sput-object v0, Landroid/provider/Settings$FlexInfo_Operator;->sMcc:Ljava/lang/String;

    .line 3870
    const-string v0, "00"

    sput-object v0, Landroid/provider/Settings$FlexInfo_Operator;->sMnc:Ljava/lang/String;

    .line 3871
    const-string v0, ""

    sput-object v0, Landroid/provider/Settings$FlexInfo_Operator;->sSpn:Ljava/lang/String;

    .line 3875
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Settings$FlexInfo_Operator;->sIntentProjection:[Ljava/lang/String;

    .line 3876
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "operatorkey"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Settings$FlexInfo_Operator;->sIntentProjection_open:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4020
    const-string v0, "FLEX_COUNTRY_CODE"

    .line 4021
    .local v0, attribute:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$FlexInfo_Operator;->getFlexValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFlexValues(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "flex_attribute"

    .prologue
    const/4 v8, 0x0

    const-string v10, "Got execption parsing flex.xml."

    const-string v6, "Flexinfo"

    const-string v9, "FlexInfo_Operator"

    .line 3978
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/flex/flex.xml"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3979
    .local v1, favFile:Ljava/io/File;
    const-string v5, ""

    .line 3981
    .local v5, return_values:Ljava/lang/String;
    :try_start_14
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_36

    .line 3988
    .local v2, flexReader:Ljava/io/FileReader;
    :try_start_19
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3989
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 3991
    const-string v6, "Flexinfo"

    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3993
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3995
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3996
    .local v3, name:Ljava/lang/String;
    const-string v6, "Flexinfo"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_31} :catch_59
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_31} :catch_64

    move-result v6

    if-nez v6, :cond_52

    move-object v6, v8

    .line 4010
    .end local v2           #flexReader:Ljava/io/FileReader;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_35
    return-object v6

    .line 3982
    :catch_36
    move-exception v6

    move-object v0, v6

    .line 3983
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "FlexInfo_Operator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find or open flex.xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 3984
    goto :goto_35

    .line 3999
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #flexReader:Ljava/io/FileReader;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_52
    const/4 v6, 0x0

    :try_start_53
    invoke-interface {v4, v6, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_56} :catch_59
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_64

    move-result-object v5

    move-object v6, v5

    .line 4000
    goto :goto_35

    .line 4003
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_59
    move-exception v6

    move-object v0, v6

    .line 4004
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "FlexInfo_Operator"

    const-string v6, "Got execption parsing flex.xml."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v8

    .line 4005
    goto :goto_35

    .line 4006
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_64
    move-exception v6

    move-object v0, v6

    .line 4007
    .local v0, e:Ljava/io/IOException;
    const-string v6, "FlexInfo_Operator"

    const-string v6, "Got execption parsing flex.xml."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v8

    .line 4008
    goto :goto_35
.end method

.method public static getMccCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4028
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 4030
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4033
    .local v1, numeric:Ljava/lang/String;
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_25

    .line 4035
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4038
    .local v2, smcc:Ljava/lang/String;
    sput-object v2, Landroid/provider/Settings$FlexInfo_Operator;->sMcc:Ljava/lang/String;

    move-object v3, v2

    .line 4049
    .end local v1           #numeric:Ljava/lang/String;
    .end local v2           #smcc:Ljava/lang/String;
    :goto_24
    return-object v3

    .line 4043
    .restart local v1       #numeric:Ljava/lang/String;
    :cond_25
    const-string v3, "0"

    goto :goto_24

    .line 4048
    .end local v1           #numeric:Ljava/lang/String;
    :cond_28
    const-string v0, "FLEX_MCC_CODE"

    .line 4049
    .local v0, attribute:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$FlexInfo_Operator;->getFlexValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_24
.end method

.method public static getMncCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4055
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4057
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4060
    .local v1, numeric:Ljava/lang/String;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_24

    .line 4064
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4066
    .local v2, smnc:Ljava/lang/String;
    sput-object v2, Landroid/provider/Settings$FlexInfo_Operator;->sMnc:Ljava/lang/String;

    move-object v3, v2

    .line 4077
    .end local v1           #numeric:Ljava/lang/String;
    .end local v2           #smnc:Ljava/lang/String;
    :goto_23
    return-object v3

    .line 4071
    .restart local v1       #numeric:Ljava/lang/String;
    :cond_24
    const-string v3, "0"

    goto :goto_23

    .line 4076
    .end local v1           #numeric:Ljava/lang/String;
    :cond_27
    const-string v0, "FLEX_MNC_CODE"

    .line 4077
    .local v0, attribute:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$FlexInfo_Operator;->getFlexValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_23
.end method

.method public static getOperatorCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4015
    const-string v0, "FLEX_OPERATOR_CODE"

    .line 4016
    .local v0, attribute:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$FlexInfo_Operator;->getFlexValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSpnCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4108
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4110
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$FlexInfo_Operator;->sSpn:Ljava/lang/String;

    .line 4111
    sget-object v0, Landroid/provider/Settings$FlexInfo_Operator;->sSpn:Ljava/lang/String;

    .line 4115
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static isInsertedKTUsim()Z
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const-string v7, "450"

    .line 4084
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4087
    .local v0, numeric:Ljava/lang/String;
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_3f

    .line 4089
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4091
    .local v1, smcc:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4093
    .local v2, smnc:Ljava/lang/String;
    const-string v3, "450"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    :cond_2b
    const-string v3, "450"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "08"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 4096
    :cond_3b
    const/4 v3, 0x1

    .line 4102
    .end local v1           #smcc:Ljava/lang/String;
    .end local v2           #smnc:Ljava/lang/String;
    :goto_3c
    return v3

    .restart local v1       #smcc:Ljava/lang/String;
    .restart local v2       #smnc:Ljava/lang/String;
    :cond_3d
    move v3, v5

    .line 4098
    goto :goto_3c

    .end local v1           #smcc:Ljava/lang/String;
    .end local v2           #smnc:Ljava/lang/String;
    :cond_3f
    move v3, v5

    .line 4102
    goto :goto_3c
.end method

.method public static is_MCC_changed_for_language(Landroid/content/ContentResolver;)I
    .registers 7
    .parameter "cr"

    .prologue
    const/4 v4, 0x0

    const-string v5, "prevMccCode_lang"

    .line 4145
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMccCode()Ljava/lang/String;

    move-result-object v1

    .line 4146
    .local v1, sMccCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMncCode()Ljava/lang/String;

    move-result-object v2

    .line 4148
    .local v2, sMncCode:Ljava/lang/String;
    const-string v3, "prevMccCode_lang"

    invoke-static {p0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4150
    .local v0, sDBMccCode:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 4152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v3, v4

    .line 4165
    :goto_20
    return v3

    .line 4159
    :cond_21
    const-string v3, "prevMccCode_lang"

    invoke-static {p0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4161
    const/4 v3, 0x1

    goto :goto_20

    :cond_28
    move v3, v4

    .line 4165
    goto :goto_20
.end method

.method public static is_simchange(Landroid/content/ContentResolver;)I
    .registers 11
    .parameter "cr"

    .prologue
    const-string v9, "MncCode"

    const-string v8, "MccCode"

    const-string v7, "FlexInfo_Operator"

    const-string v6, ":"

    .line 4120
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMccCode()Ljava/lang/String;

    move-result-object v2

    .line 4121
    .local v2, sMccCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMncCode()Ljava/lang/String;

    move-result-object v3

    .line 4122
    .local v3, sMncCode:Ljava/lang/String;
    const-string v4, "MccCode"

    invoke-static {p0, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4123
    .local v0, sDBMccCode:Ljava/lang/String;
    const-string v4, "MncCode"

    invoke-static {p0, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4125
    .local v1, sDBMncCode:Ljava/lang/String;
    const-string v4, "FlexInfo_Operator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadOperatorCode : sMccCode =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    const-string v4, "FlexInfo_Operator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadOperatorCode : sMncCode =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 4129
    const/4 v4, 0x0

    .line 4137
    :goto_6d
    return v4

    .line 4133
    :cond_6e
    const-string v4, "OperatorCode"

    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4134
    const-string v4, "CountryCode"

    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4135
    const-string v4, "MccCode"

    invoke-static {p0, v8, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4136
    const-string v4, "MncCode"

    invoke-static {p0, v9, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4137
    const/4 v4, 0x1

    goto :goto_6d
.end method

.method public static loadOperatorCode(Landroid/content/ContentResolver;)I
    .registers 16
    .parameter "cr"

    .prologue
    .line 3884
    const/4 v11, 0x0

    .line 3885
    .local v11, default_oper:I
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMccCode()Ljava/lang/String;

    move-result-object v13

    .line 3886
    .local v13, sMccCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMncCode()Ljava/lang/String;

    move-result-object v14

    .line 3887
    .local v14, sMncCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getSpnCode()Ljava/lang/String;

    move-result-object v12

    .line 3889
    .local v12, sSpnCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v7

    .line 3890
    .local v7, sOperatorCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    .line 3892
    .local v6, sCountryCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OPEN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    .line 3894
    const-string v8, "OperatorCode"

    invoke-static {p0, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2e

    .line 3895
    const-string v8, "OperatorCode"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3897
    :cond_2e
    const-string v7, "CountryCode"

    .end local v7           #sOperatorCode:Ljava/lang/String;
    invoke-static {p0, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3b

    .line 3898
    const-string v7, "CountryCode"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3900
    :cond_3b
    const-string v6, "MccCode"

    .end local v6           #sCountryCode:Ljava/lang/String;
    invoke-static {p0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_48

    .line 3901
    const-string v6, "MccCode"

    invoke-static {p0, v6, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3903
    :cond_48
    const-string v6, "MncCode"

    invoke-static {p0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_55

    .line 3904
    const-string v6, "MncCode"

    invoke-static {p0, v6, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3907
    :cond_55
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OPEN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1dc

    .line 3910
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "MAX(operatorkey)"

    aput-object v8, v7, v6

    .line 3911
    .local v7, sIntentProjection_default:[Ljava/lang/String;
    sget-object v6, Landroid/provider/Settings$FlexInfo_Operator;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3913
    .local v6, c:Landroid/database/Cursor;
    :try_start_78
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .end local v7           #sIntentProjection_default:[Ljava/lang/String;
    if-eqz v7, :cond_1d9

    .line 3914
    const-string v7, "FlexInfo_Operator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "default_oper : c.getInt(0) =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9f
    .catchall {:try_start_78 .. :try_end_9f} :catchall_17d

    move-result v7

    .line 3918
    .end local v11           #default_oper:I
    .local v7, default_oper:I
    :goto_a0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v6, v7

    .line 3922
    .end local v7           #default_oper:I
    .local v6, default_oper:I
    :goto_a4
    const-string v7, "450"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_182

    const-string v7, "00"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_182

    .line 3923
    const-string v7, ""

    .line 3927
    .end local v12           #sSpnCode:Ljava/lang/String;
    .local v7, sSpnCode:Ljava/lang/String;
    :goto_b6
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OPEN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 3929
    const-string v8, "FlexInfo_Operator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadOperatorCode : sMccCode =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    const-string v8, "FlexInfo_Operator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadOperatorCode : sMncCode =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    const-string v8, "FlexInfo_Operator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadOperatorCode : sSpnCode =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    :cond_10a
    const-string v8, ""

    if-eq v13, v8, :cond_1cf

    const-string v8, ""

    if-eq v14, v8, :cond_1cf

    .line 3938
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OPEN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ac

    .line 3940
    const-string v8, ""

    if-eq v7, v8, :cond_196

    .line 3942
    sget-object v9, Landroid/provider/Settings$FlexInfo_Operator;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/Settings$FlexInfo_Operator;->sIntentProjection_open:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MCC=? and MNC=?and SPN like \'%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .end local v7           #sSpnCode:Ljava/lang/String;
    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x2

    new-array v12, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v13, v12, v7

    const/4 v7, 0x1

    aput-object v14, v12, v7

    const/4 v13, 0x0

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v13           #sMccCode:Ljava/lang/String;
    move-result-object p0

    .line 3961
    .local p0, c:Landroid/database/Cursor;
    :goto_14e
    :try_start_14e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1cc

    .line 3962
    const-string v7, "FlexInfo_Operator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadOperatorCode : c.getInt(0) =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_175
    .catchall {:try_start_14e .. :try_end_175} :catchall_1d1

    move-result v7

    if-nez v7, :cond_1c2

    .line 3969
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p0, v6

    .line 3972
    .end local v6           #default_oper:I
    .end local p0           #c:Landroid/database/Cursor;
    :goto_17c
    return p0

    .line 3918
    .local v6, c:Landroid/database/Cursor;
    .restart local v11       #default_oper:I
    .restart local v12       #sSpnCode:Ljava/lang/String;
    .restart local v13       #sMccCode:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    :catchall_17d
    move-exception p0

    .end local p0           #cr:Landroid/content/ContentResolver;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw p0

    .line 3924
    .end local v11           #default_oper:I
    .local v6, default_oper:I
    .restart local p0       #cr:Landroid/content/ContentResolver;
    :cond_182
    const-string v7, "0"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d6

    const-string v7, "0"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d6

    .line 3925
    const-string v7, "Default"

    .end local v12           #sSpnCode:Ljava/lang/String;
    .restart local v7       #sSpnCode:Ljava/lang/String;
    goto/16 :goto_b6

    .line 3948
    :cond_196
    sget-object v9, Landroid/provider/Settings$FlexInfo_Operator;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/Settings$FlexInfo_Operator;->sIntentProjection_open:[Ljava/lang/String;

    const-string v11, "MCC=? and MNC=?"

    const/4 v7, 0x2

    new-array v12, v7, [Ljava/lang/String;

    .end local v7           #sSpnCode:Ljava/lang/String;
    const/4 v7, 0x0

    aput-object v13, v12, v7

    const/4 v7, 0x1

    aput-object v14, v12, v7

    const/4 v13, 0x0

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v13           #sMccCode:Ljava/lang/String;
    move-result-object p0

    .local p0, c:Landroid/database/Cursor;
    goto :goto_14e

    .line 3955
    .restart local v7       #sSpnCode:Ljava/lang/String;
    .restart local v13       #sMccCode:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_1ac
    sget-object v9, Landroid/provider/Settings$FlexInfo_Operator;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/Settings$FlexInfo_Operator;->sIntentProjection:[Ljava/lang/String;

    const-string v11, "MCC=? and MNC=?"

    const/4 v7, 0x2

    new-array v12, v7, [Ljava/lang/String;

    .end local v7           #sSpnCode:Ljava/lang/String;
    const/4 v7, 0x0

    aput-object v13, v12, v7

    const/4 v7, 0x1

    aput-object v14, v12, v7

    const/4 v13, 0x0

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v13           #sMccCode:Ljava/lang/String;
    move-result-object p0

    .local p0, c:Landroid/database/Cursor;
    goto :goto_14e

    .line 3966
    :cond_1c2
    const/4 v6, 0x0

    :try_start_1c3
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1c6
    .catchall {:try_start_1c3 .. :try_end_1c6} :catchall_1d1

    .end local v6           #default_oper:I
    move-result v6

    .line 3969
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p0, v6

    goto :goto_17c

    .restart local v6       #default_oper:I
    :cond_1cc
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .end local p0           #c:Landroid/database/Cursor;
    :cond_1cf
    move p0, v6

    .line 3972
    goto :goto_17c

    .line 3969
    .end local v6           #default_oper:I
    .restart local p0       #c:Landroid/database/Cursor;
    :catchall_1d1
    move-exception v6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v6

    .restart local v6       #default_oper:I
    .restart local v12       #sSpnCode:Ljava/lang/String;
    .restart local v13       #sMccCode:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_1d6
    move-object v7, v12

    .end local v12           #sSpnCode:Ljava/lang/String;
    .restart local v7       #sSpnCode:Ljava/lang/String;
    goto/16 :goto_b6

    .end local v7           #sSpnCode:Ljava/lang/String;
    .local v6, c:Landroid/database/Cursor;
    .restart local v11       #default_oper:I
    .restart local v12       #sSpnCode:Ljava/lang/String;
    :cond_1d9
    move v7, v11

    .end local v11           #default_oper:I
    .local v7, default_oper:I
    goto/16 :goto_a0

    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #default_oper:I
    .restart local v11       #default_oper:I
    :cond_1dc
    move v6, v11

    .end local v11           #default_oper:I
    .local v6, default_oper:I
    goto/16 :goto_a4
.end method
