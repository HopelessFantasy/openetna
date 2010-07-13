.class Lcom/android/phone/CdmaOptions$MyHandler;
.super Landroid/os/Handler;
.source "CdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_QUERY_ROAMING_PREFERENCE:I = 0x0

.field private static final MESSAGE_SET_CDMA_SUBSCRIPTION:I = 0x2

.field private static final MESSAGE_SET_ROAMING_PREFERENCE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaOptions;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaOptions;Lcom/android/phone/CdmaOptions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions$MyHandler;-><init>(Lcom/android/phone/CdmaOptions;)V

    return-void
.end method

.method private handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const-string v6, "roaming_settings"

    .line 270
    iget-object v3, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/CdmaOptions;->access$202(Lcom/android/phone/CdmaOptions;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 271
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 273
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5b

    .line 274
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 275
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v3}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, settingsRoamingMode:I
    if-eqz v2, :cond_38

    const/4 v3, 0x1

    if-eq v2, v3, :cond_38

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5c

    .line 282
    :cond_38
    if-eq v2, v1, :cond_4e

    .line 283
    move v1, v2

    .line 285
    iget-object v3, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v3}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    :cond_4e
    iget-object v3, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v3}, Lcom/android/phone/CdmaOptions;->access$300(Lcom/android/phone/CdmaOptions;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 297
    .end local v1           #settingsRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_5b
    :goto_5b
    return-void

    .line 294
    .restart local v1       #settingsRoamingMode:I
    .restart local v2       #statusCdmaRoamingMode:I
    :cond_5c
    invoke-direct {p0}, Lcom/android/phone/CdmaOptions$MyHandler;->resetCdmaRoamingModeToDefault()V

    goto :goto_5b
.end method

.method private handleSetCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/CdmaOptions;->access$202(Lcom/android/phone/CdmaOptions;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 301
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 303
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_37

    .line 304
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$300(Lcom/android/phone/CdmaOptions;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 305
    .local v1, cdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    .end local v1           #cdmaRoamingMode:I
    :goto_36
    return-void

    .line 309
    :cond_37
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaOptions$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_36
.end method

.method private resetCdmaRoamingModeToDefault()V
    .registers 5

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/CdmaOptions;->access$202(Lcom/android/phone/CdmaOptions;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, cdmaRoamingMode:I
    const/4 v1, 0x0

    .line 319
    .local v1, statusCdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$300(Lcom/android/phone/CdmaOptions;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaOptions$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 327
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 267
    :goto_5
    return-void

    .line 257
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions$MyHandler;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_5

    .line 261
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions$MyHandler;->handleSetCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_5

    .line 264
    :pswitch_e
    iget-object v0, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-static {v0, p1}, Lcom/android/phone/CdmaOptions;->access$100(Lcom/android/phone/CdmaOptions;Landroid/os/Message;)V

    goto :goto_5

    .line 255
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method
