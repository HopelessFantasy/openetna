.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final POWER_AUDIO:Ljava/lang/String; = "dsp.audio"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"

.field public static final POWER_CPU_FULL:Ljava/lang/String; = "cpu.full"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_NORMAL:Ljava/lang/String; = "cpu.normal"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_NONE:Ljava/lang/String; = "none"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"

.field public static final POWER_VIDEO:Ljava/lang/String; = "dsp.video"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field static final sPowerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 139
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;)V

    .line 141
    :cond_e
    return-void
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    const-string v11, "value"

    const-string v11, "name"

    const-string v11, "item"

    .line 144
    const v4, 0x10b0003

    .line 145
    .local v4, id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 146
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 147
    .local v7, parsingArray:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .line 151
    .local v1, arrayName:Ljava/lang/String;
    :try_start_18
    const-string v11, "device"

    invoke-static {v6, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 154
    :cond_1d
    :goto_1d
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 156
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, element:Ljava/lang/String;
    if-nez v3, :cond_3b

    .line 186
    if-eqz v7, :cond_37

    .line 187
    sget-object v11, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_37} :catch_ab
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_37} :catch_c3

    .line 194
    :cond_37
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 196
    return-void

    .line 159
    :cond_3b
    if-eqz v7, :cond_55

    :try_start_3d
    const-string v11, "value"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_55

    .line 161
    sget-object v11, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/4 v7, 0x0

    .line 164
    :cond_55
    const-string v11, "array"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 165
    const/4 v7, 0x1

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v6, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 168
    :cond_69
    const-string v11, "item"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_79

    const-string v11, "value"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 169
    :cond_79
    const/4 v5, 0x0

    .line 170
    .local v5, name:Ljava/lang/String;
    if-nez v7, :cond_83

    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v6, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    :cond_83
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1d

    .line 172
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_8d
    .catchall {:try_start_3d .. :try_end_8d} :catchall_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_8d} :catch_ab
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_8d} :catch_c3

    move-result-object v8

    .line 173
    .local v8, power:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 175
    .local v9, value:D
    :try_start_90
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_90 .. :try_end_97} :catch_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_90 .. :try_end_97} :catch_ab
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_97} :catch_c3

    move-result-wide v9

    .line 178
    :goto_98
    :try_start_98
    const-string v11, "item"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b8

    .line 179
    sget-object v11, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a9
    .catchall {:try_start_98 .. :try_end_a9} :catchall_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_a9} :catch_ab
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a9} :catch_c3

    goto/16 :goto_1d

    .line 189
    .end local v3           #element:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #power:Ljava/lang/String;
    .end local v9           #value:D
    :catch_ab
    move-exception v11

    move-object v2, v11

    .line 190
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_ad
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_b3

    .line 194
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_b3
    move-exception v11

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v11

    .line 180
    .restart local v3       #element:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #power:Ljava/lang/String;
    .restart local v9       #value:D
    :cond_b8
    if-eqz v7, :cond_1d

    .line 181
    :try_start_ba
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_c1} :catch_ab
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c1} :catch_c3

    goto/16 :goto_1d

    .line 191
    .end local v3           #element:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #power:Ljava/lang/String;
    .end local v9           #value:D
    :catch_c3
    move-exception v11

    move-object v2, v11

    .line 192
    .local v2, e:Ljava/io/IOException;
    :try_start_c5
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_cb
    .catchall {:try_start_c5 .. :try_end_cb} :catchall_b3

    .line 176
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #element:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #power:Ljava/lang/String;
    .restart local v9       #value:D
    :catch_cb
    move-exception v11

    goto :goto_98
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .registers 5
    .parameter "type"

    .prologue
    .line 204
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 205
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, data:Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_1e

    .line 207
    check-cast v0, [Ljava/lang/Double;

    .end local v0           #data:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 212
    .end local p0
    :goto_1d
    return-wide v1

    .line 209
    .restart local v0       #data:Ljava/lang/Object;
    .restart local p0
    :cond_1e
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_1d

    .line 212
    .end local v0           #data:Ljava/lang/Object;
    .restart local p0
    :cond_2b
    const-wide/16 v1, 0x0

    goto :goto_1d
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .registers 9
    .parameter "type"
    .parameter "level"

    .prologue
    const-wide/16 v4, 0x0

    .line 225
    sget-object v3, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 226
    sget-object v3, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 227
    .local v1, data:Ljava/lang/Object;
    instance-of v3, v1, [Ljava/lang/Double;

    if-eqz v3, :cond_34

    .line 228
    check-cast v1, [Ljava/lang/Double;

    .end local v1           #data:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Double;

    move-object v2, v0

    .line 229
    .local v2, values:[Ljava/lang/Double;
    array-length v3, v2

    if-le v3, p2, :cond_26

    if-ltz p2, :cond_26

    .line 230
    aget-object v3, v2, p2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 240
    .end local v2           #values:[Ljava/lang/Double;
    :goto_25
    return-wide v3

    .line 231
    .restart local v2       #values:[Ljava/lang/Double;
    :cond_26
    if-gez p2, :cond_2a

    move-wide v3, v4

    .line 232
    goto :goto_25

    .line 234
    :cond_2a
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_25

    .line 237
    .end local v2           #values:[Ljava/lang/Double;
    .restart local v1       #data:Ljava/lang/Object;
    :cond_34
    check-cast v1, Ljava/lang/Double;

    .end local v1           #data:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_25

    :cond_3b
    move-wide v3, v4

    .line 240
    goto :goto_25
.end method
