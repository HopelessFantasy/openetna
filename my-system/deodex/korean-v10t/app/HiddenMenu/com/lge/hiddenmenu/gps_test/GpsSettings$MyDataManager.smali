.class public Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;
.super Ljava/lang/Object;
.source "GpsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/GpsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDataManager"
.end annotation


# static fields
.field public static final AGPS_MODE:Ljava/lang/String; = "AGPS_MODE"

.field public static final GPS_SETTINGS2_FILE:Ljava/lang/String; = "/data/ext_gps.conf"

.field public static final GPS_SETTINGS2_PATH:Ljava/lang/String; = "/data"

.field public static final GPS_SETTINGS_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field public static final GPS_SETTINGS_PATH:Ljava/lang/String; = "/etc"

.field public static final POSITION_MODE:Ljava/lang/String; = "POSITION_MODE"

.field public static final SLP_MODE:Ljava/lang/String; = "SLP_MODE"

.field public static final SUPL_HOST:Ljava/lang/String; = "SUPL_HOST"

.field public static final SUPL_PORT:Ljava/lang/String; = "SUPL_PORT"


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->saveSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->loadSettings()V

    return-void
.end method

.method private loadSettings()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 279
    :try_start_2
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    const-string v8, "location"

    invoke-virtual {v6, v8}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    invoke-static {v7, v6}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1402(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 280
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1400(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 281
    .local v1, c:Ljava/lang/Class;
    const-string v6, "mService"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 282
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 283
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1400(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/LocationManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/ILocationManager;

    invoke-static {v7, v6}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1502(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Landroid/location/ILocationManager;)Landroid/location/ILocationManager;

    .line 285
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/ILocationManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/location/ILocationManager;->getSuplAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$802(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/ILocationManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/location/ILocationManager;->getSuplPort()I

    move-result v7

    invoke-static {v6, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1002(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I

    .line 287
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/ILocationManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/location/ILocationManager;->getPositionMode()I

    move-result v7

    invoke-static {v6, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$202(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I

    .line 288
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/ILocationManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/location/ILocationManager;->getSlpMode()I

    move-result v7

    invoke-static {v6, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$602(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I

    .line 289
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v7

    if-lez v7, :cond_ae

    move v7, v10

    :goto_85
    invoke-static {v6, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1602(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_88} :catch_b0

    .line 295
    .end local v1           #c:Ljava/lang/Class;
    .end local v3           #f:Ljava/lang/reflect/Field;
    :goto_88
    :try_start_88
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/log.conf"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v4, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 297
    .local v5, stream:Ljava/io/FileInputStream;
    const/16 v6, 0xa

    new-array v0, v6, [B

    .line 298
    .local v0, buffer:[B
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    .line 299
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 300
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_cf

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1202(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_ad} :catch_d6

    .line 306
    .end local v0           #buffer:[B
    .end local v4           #file:Ljava/io/File;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :goto_ad
    return-void

    .restart local v1       #c:Ljava/lang/Class;
    .restart local v3       #f:Ljava/lang/reflect/Field;
    :cond_ae
    move v7, v9

    .line 289
    goto :goto_85

    .line 290
    .end local v1           #c:Ljava/lang/Class;
    .end local v3           #f:Ljava/lang/reflect/Field;
    :catch_b0
    move-exception v6

    move-object v2, v6

    .line 291
    .local v2, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GpsException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1700(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Ljava/lang/String;)V

    goto :goto_88

    .line 301
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :cond_cf
    :try_start_cf
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1202(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d5} :catch_d6

    goto :goto_ad

    .line 302
    .end local v0           #buffer:[B
    .end local v4           #file:Ljava/io/File;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_d6
    move-exception v6

    move-object v2, v6

    .line 303
    .local v2, e:Ljava/io/IOException;
    const-string v6, "Gps"

    const-string v7, "Could not open GPS Logging configuration file "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad
.end method

.method private saveSettings()V
    .registers 14

    .prologue
    const-string v7, "Unable to write"

    const-string v12, "Exception closing file"

    const-string v11, "Gps"

    .line 312
    :try_start_6
    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    const-string v9, "location"

    invoke-virtual {v7, v9}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    invoke-static {v8, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1402(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 313
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1400(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/LocationManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 314
    .local v0, c:Ljava/lang/Class;
    const-string v7, "mService"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 315
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 316
    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1400(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/LocationManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/ILocationManager;

    invoke-static {v8, v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1502(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Landroid/location/ILocationManager;)Landroid/location/ILocationManager;

    .line 318
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/ILocationManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v8}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/location/ILocationManager;->setSuplAddress(Ljava/lang/String;)V

    .line 319
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/ILocationManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v8}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1000(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/location/ILocationManager;->setSuplPort(I)V

    .line 320
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/ILocationManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v8}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/location/ILocationManager;->setPositionMode(I)V

    .line 321
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/ILocationManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v8}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/location/ILocationManager;->setSlpMode(I)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7e} :catch_a1

    .line 326
    .end local v0           #c:Ljava/lang/Class;
    .end local v3           #f:Ljava/lang/reflect/Field;
    :goto_7e
    const/4 v5, 0x0

    .line 327
    .local v5, writer:Ljava/io/FileWriter;
    const-string v4, ""

    .line 330
    .local v4, s:Ljava/lang/String;
    :try_start_81
    new-instance v1, Ljava/io/File;

    const-string v7, "/data"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, d:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_c9

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_c9

    .line 333
    const-string v7, "Gps"

    const-string v8, "Unable to create directory to write location"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_198
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_9b} :catch_17e

    .line 352
    if-eqz v5, :cond_a0

    .line 354
    :try_start_9d
    #Replaced unresolvable odex instruction with a throw
    throw v5
    #invoke-virtual-quick {v5}, vtable@0x11
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_c0

    .line 380
    .end local v1           #d:Ljava/io/File;
    :cond_a0
    :goto_a0
    return-void

    .line 322
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #writer:Ljava/io/FileWriter;
    :catch_a1
    move-exception v7

    move-object v2, v7

    .line 323
    .local v2, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GpsException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1700(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Ljava/lang/String;)V

    goto :goto_7e

    .line 355
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #d:Ljava/io/File;
    .restart local v4       #s:Ljava/lang/String;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :catch_c0
    move-exception v2

    .line 356
    .local v2, e:Ljava/io/IOException;
    const-string v7, "Gps"

    const-string v7, "Exception closing file"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 339
    .end local v2           #e:Ljava/io/IOException;
    :cond_c9
    :try_start_c9
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/ext_gps.conf"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v3, f:Ljava/io/File;
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_d5
    .catchall {:try_start_c9 .. :try_end_d5} :catchall_198
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d5} :catch_17e

    .line 341
    .end local v5           #writer:Ljava/io/FileWriter;
    .local v6, writer:Ljava/io/FileWriter;
    :try_start_d5
    const-string v7, "%s=%s\n%s=%d\n%s=%d\n%s=%d\n%s=%d\n"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "SUPL_HOST"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v10}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "SUPL_PORT"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v10}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1000(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "POSITION_MODE"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v10}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "AGPS_MODE"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v10}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1600(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "SLP_MODE"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget-object v10, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v10}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-virtual {v6, v4}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_13a
    .catchall {:try_start_d5 .. :try_end_13a} :catchall_1d9
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_13a} :catch_1dc

    .line 352
    if-eqz v6, :cond_13f

    .line 354
    :try_start_13c
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_13f} :catch_175

    .line 363
    .end local v1           #d:Ljava/io/File;
    .end local v3           #f:Ljava/io/File;
    :cond_13f
    :goto_13f
    :try_start_13f
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/log.conf"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v3       #f:Ljava/io/File;
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_14b
    .catchall {:try_start_13f .. :try_end_14b} :catchall_1c3
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_14b} :catch_1a8

    .line 365
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :try_start_14b
    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v10}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1200(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-virtual {v5, v4}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_164
    .catchall {:try_start_14b .. :try_end_164} :catchall_1d4
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_164} :catch_1d6

    .line 372
    if-eqz v5, :cond_a0

    .line 374
    :try_start_166
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_16b

    goto/16 :goto_a0

    .line 375
    :catch_16b
    move-exception v2

    .line 376
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Gps"

    const-string v7, "Exception closing file"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a0

    .line 355
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v1       #d:Ljava/io/File;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_175
    move-exception v2

    .line 356
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Gps"

    const-string v7, "Exception closing file"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13f

    .line 349
    .end local v1           #d:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #f:Ljava/io/File;
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :catch_17e
    move-exception v7

    move-object v2, v7

    .line 350
    .restart local v2       #e:Ljava/io/IOException;
    :goto_180
    :try_start_180
    const-string v7, "Gps"

    const-string v8, "Unable to write"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_187
    .catchall {:try_start_180 .. :try_end_187} :catchall_198

    .line 352
    if-eqz v5, :cond_1e0

    .line 354
    :try_start_189
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_18e

    move-object v6, v5

    .line 357
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    goto :goto_13f

    .line 355
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :catch_18e
    move-exception v2

    .line 356
    const-string v7, "Gps"

    const-string v7, "Exception closing file"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v5

    .line 357
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    goto :goto_13f

    .line 352
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :catchall_198
    move-exception v7

    :goto_199
    if-eqz v5, :cond_19e

    .line 354
    :try_start_19b
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19e} :catch_19f

    .line 357
    :cond_19e
    :goto_19e
    throw v7

    .line 355
    :catch_19f
    move-exception v2

    .line 356
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Gps"

    const-string v8, "Exception closing file"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19e

    .line 369
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_1a8
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .line 370
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :goto_1ab
    :try_start_1ab
    const-string v7, "Gps"

    const-string v8, "Unable to write"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b2
    .catchall {:try_start_1ab .. :try_end_1b2} :catchall_1d4

    .line 372
    if-eqz v5, :cond_a0

    .line 374
    :try_start_1b4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1b7} :catch_1b9

    goto/16 :goto_a0

    .line 375
    :catch_1b9
    move-exception v2

    .line 376
    const-string v7, "Gps"

    const-string v7, "Exception closing file"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a0

    .line 372
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catchall_1c3
    move-exception v7

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :goto_1c5
    if-eqz v5, :cond_1ca

    .line 374
    :try_start_1c7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1ca} :catch_1cb

    .line 377
    :cond_1ca
    :goto_1ca
    throw v7

    .line 375
    :catch_1cb
    move-exception v2

    .line 376
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Gps"

    const-string v8, "Exception closing file"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ca

    .line 372
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1d4
    move-exception v7

    goto :goto_1c5

    .line 369
    .restart local v3       #f:Ljava/io/File;
    :catch_1d6
    move-exception v7

    move-object v2, v7

    goto :goto_1ab

    .line 352
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v1       #d:Ljava/io/File;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catchall_1d9
    move-exception v7

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_199

    .line 349
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_1dc
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_180

    .end local v1           #d:Ljava/io/File;
    .end local v3           #f:Ljava/io/File;
    .restart local v2       #e:Ljava/io/IOException;
    :cond_1e0
    move-object v6, v5

    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    goto/16 :goto_13f
.end method
