.class Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;
.super Ljava/lang/Object;
.source "ManageCBchannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageCBchannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteChannelListener"
.end annotation


# instance fields
.field private final mChannelId:I

.field final synthetic this$0:Lcom/android/mms/ui/ManageCBchannelActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageCBchannelActivity;I)V
    .registers 5
    .parameter
    .parameter "channelId"

    .prologue
    const-string v1, "ManageCBchannelActivity"

    .line 286
    iput-object p1, p0, Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p2, p0, Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;->mChannelId:I

    .line 289
    const/4 v0, -0x1

    if-eq p2, v0, :cond_14

    .line 290
    const-string v0, "ManageCBchannelActivity"

    const-string v0, "[LGE_Rian]CB channel deleted"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_13
    return-void

    .line 292
    :cond_14
    const-string v0, "ManageCBchannelActivity"

    const-string v0, "[LGE_Rian]CB channel deleted initiate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v11, 0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const-string v9, "ManageCBchannelActivity"

    .line 299
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$000()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v0, v7, [B

    .line 300
    .local v0, channel_byte:[B
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$000()I

    move-result v7

    new-array v1, v7, [I

    .line 302
    .local v1, channel_int:[I
    const/4 v6, 0x0

    .line 303
    .local v6, updateCbmi_result:Z
    const/4 v4, 0x0

    .line 304
    .local v4, setBcConfig_result:Z
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 305
    .local v5, smsManager:Landroid/telephony/SmsManager;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$000()I

    move-result v7

    if-ge v3, v7, :cond_2f

    .line 306
    mul-int/lit8 v7, v3, 0x2

    aput-byte v8, v0, v7

    .line 307
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aput-byte v8, v0, v7

    .line 309
    aput v8, v1, v3

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 311
    :cond_2f
    const/4 v2, 0x0

    .line 313
    .local v2, entrySize:I
    iget-object v7, p0, Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$200(Lcom/android/mms/ui/ManageCBchannelActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VIVO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    iget-object v7, p0, Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$300(Lcom/android/mms/ui/ManageCBchannelActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "BR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 314
    invoke-virtual {v5, v2, v1}, Landroid/telephony/SmsManager;->setBroadcastConfig(I[I)Z

    move-result v4

    .line 315
    if-ne v4, v11, :cond_65

    .line 316
    iget-object v7, p0, Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/ManageCBchannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 317
    const-string v7, "ManageCBchannelActivity"

    const-string v7, "[Delete All][VIVO]Success to delete all CBMIs config to WMS"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_64
    return-void

    .line 319
    :cond_65
    const-string v7, "ManageCBchannelActivity"

    const-string v7, "[Delete All][VIVO]Fail to delete all CBMIs config to WMS"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 322
    :cond_6d
    invoke-virtual {v5, v0}, Landroid/telephony/SmsManager;->updateCBMIToSim([B)Z

    move-result v6

    .line 323
    invoke-virtual {v5, v2, v1}, Landroid/telephony/SmsManager;->setBroadcastConfig(I[I)Z

    move-result v4

    .line 325
    if-ne v6, v11, :cond_93

    if-ne v4, v11, :cond_93

    .line 326
    iget-object v7, p0, Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/ManageCBchannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 327
    const-string v7, "ManageCBchannelActivity"

    const-string v7, "[Delete All]Success to delete all CBMIs in SIM"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v7, "ManageCBchannelActivity"

    const-string v7, "[Delete All]Success to delete all CBMIs config to WMS"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 330
    :cond_93
    const-string v7, "ManageCBchannelActivity"

    const-string v7, "[Delete All]Fail to delete all CBMIs in SIM"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v7, "ManageCBchannelActivity"

    const-string v7, "[Delete All]Fail to delete all CBMIs config to WMS"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method
