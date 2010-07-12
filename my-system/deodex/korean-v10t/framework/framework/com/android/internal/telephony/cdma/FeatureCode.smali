.class public final Lcom/android/internal/telephony/cdma/FeatureCode;
.super Landroid/os/Handler;
.source "FeatureCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final EVENT_CDMA_FLASH_COMPLETED:I = 0x2

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final FC_3WC:Ljava/lang/String; = "71"

.field static final FC_CCW:Ljava/lang/String; = "70"

.field static final FC_CFBL_ACTIVATE:Ljava/lang/String; = "90"

.field static final FC_CFBL_DEACTIVATE:Ljava/lang/String; = "91"

.field static final FC_CFBL_FORWARD_TO_NUMBER:Ljava/lang/String; = "40"

.field static final FC_CFDA_ACTIVATE:Ljava/lang/String; = "92"

.field static final FC_CFDA_DEACTIVATE:Ljava/lang/String; = "93"

.field static final FC_CFDA_FORWARD_TO_NUMBER:Ljava/lang/String; = "42"

.field static final FC_CF_ACTIVATE:Ljava/lang/String; = "72"

.field static final FC_CF_DEACTIVATE:Ljava/lang/String; = "73"

.field static final FC_CF_FORWARD_TO_NUMBER:Ljava/lang/String; = "56"

.field static final FC_CNIP:Ljava/lang/String; = "65"

.field static final FC_CNIR:Ljava/lang/String; = "85"

.field static final FC_DND_ACTIVATE:Ljava/lang/String; = "78"

.field static final FC_DND_DEACTIVATE:Ljava/lang/String; = "79"

.field static final FC_RUAC_ACTIVATE:Ljava/lang/String; = "60"

.field static final FC_RUAC_DEACTIVATE:Ljava/lang/String; = "80"

.field static final FC_WHO:Ljava/lang/String; = "51"

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final MATCH_GROUP_ACTION_STRING:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0x5

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static sPatternSuppService:Ljava/util/regex/Pattern;


# instance fields
.field action:Ljava/lang/String;

.field context:Landroid/content/Context;

.field dialingNumber:Ljava/lang/String;

.field message:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field poundString:Ljava/lang/String;

.field sc:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    const-string v0, "((\\*)(\\d{2,3})(#?)([^*#]*)?)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/FeatureCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 208
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    .line 210
    return-void
.end method

.method private getScString()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_99

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/FeatureCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v1, 0x1040030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 292
    :goto_15
    return-object v0

    .line 275
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/FeatureCode;->isServiceCodeCallWaiting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v1, 0x1040031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 277
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    const-string v1, "65"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v1, 0x1040035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 279
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    const-string v1, "85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v1, 0x1040036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 281
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/FeatureCode;->isServiceCodeThreeWayCalling(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v1, 0x1040037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 283
    :cond_62
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/FeatureCode;->isServiceCodeAnnoyingCalls(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v1, 0x1040038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 285
    :cond_74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/FeatureCode;->isServiceCodeCallingNumberDelivery(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v1, 0x1040039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 287
    :cond_86
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/FeatureCode;->isServiceCodeDoNotDisturb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v1, 0x104003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_15

    .line 292
    :cond_99
    const-string v0, ""

    goto/16 :goto_15
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 165
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isServiceCodeAnnoyingCalls(Ljava/lang/String;)Z
    .registers 2
    .parameter "sc"

    .prologue
    .line 186
    if-eqz p0, :cond_14

    const-string v0, "60"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "80"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .registers 2
    .parameter "sc"

    .prologue
    .line 169
    if-eqz p0, :cond_4c

    const-string v0, "72"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "73"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "56"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "90"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "91"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "92"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "93"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "42"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_4a
    const/4 v0, 0x1

    :goto_4b
    return v0

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method static isServiceCodeCallWaiting(Ljava/lang/String;)Z
    .registers 2
    .parameter "sc"

    .prologue
    .line 178
    if-eqz p0, :cond_c

    const-string v0, "70"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static isServiceCodeCallingNumberDelivery(Ljava/lang/String;)Z
    .registers 2
    .parameter "sc"

    .prologue
    .line 192
    if-eqz p0, :cond_14

    const-string v0, "65"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "85"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static isServiceCodeDoNotDisturb(Ljava/lang/String;)Z
    .registers 2
    .parameter "sc"

    .prologue
    .line 198
    if-eqz p0, :cond_14

    const-string v0, "78"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "79"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static isServiceCodeThreeWayCalling(Ljava/lang/String;)Z
    .registers 2
    .parameter "sc"

    .prologue
    .line 182
    if-eqz p0, :cond_c

    const-string v0, "71"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 158
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 160
    :goto_9
    return-object v0

    :cond_a
    move-object v0, p0

    goto :goto_9
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/FeatureCode;
    .registers 5
    .parameter "dialString"
    .parameter "phone"

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, ret:Lcom/android/internal/telephony/cdma/FeatureCode;
    sget-object v2, Lcom/android/internal/telephony/cdma/FeatureCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 141
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 142
    new-instance v1, Lcom/android/internal/telephony/cdma/FeatureCode;

    .end local v1           #ret:Lcom/android/internal/telephony/cdma/FeatureCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/cdma/FeatureCode;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 143
    .restart local v1       #ret:Lcom/android/internal/telephony/cdma/FeatureCode;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/FeatureCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/FeatureCode;->poundString:Ljava/lang/String;

    .line 144
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/FeatureCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/FeatureCode;->action:Ljava/lang/String;

    .line 145
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/FeatureCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/FeatureCode;->sc:Ljava/lang/String;

    .line 146
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/FeatureCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/FeatureCode;->dialingNumber:Ljava/lang/String;

    .line 149
    :cond_3e
    return-object v1
.end method

.method private onSetComplete(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "ar"

    .prologue
    const v2, 0x104001f

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/FeatureCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 297
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2a

    .line 300
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 307
    :goto_22
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->message:Ljava/lang/CharSequence;

    .line 308
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onFeatureCodeDone(Lcom/android/internal/telephony/cdma/FeatureCode;)V

    .line 309
    return-void

    .line 303
    :cond_2a
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_22
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 226
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 248
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_44

    .line 266
    :goto_5
    return-void

    .line 250
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 251
    .local v1, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/FeatureCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 254
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_12
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 256
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_33

    .line 257
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 258
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v3, 0x1040062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->message:Ljava/lang/CharSequence;

    .line 263
    :goto_2d
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onFeatureCodeDone(Lcom/android/internal/telephony/cdma/FeatureCode;)V

    goto :goto_5

    .line 260
    :cond_33
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 261
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->context:Landroid/content/Context;

    const v3, 0x1040061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->message:Ljava/lang/CharSequence;

    goto :goto_2d

    .line 248
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
    .end packed-switch
.end method

.method public isCancelable()Z
    .registers 3

    .prologue
    .line 229
    const-string v0, "CDMA"

    const-string v1, "isCancelable: not used in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public isUssdRequest()Z
    .registers 3

    .prologue
    .line 234
    const-string v0, "CDMA"

    const-string v1, "isUssdRequest: not used in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method processCode()V
    .registers 4

    .prologue
    .line 240
    const-string v0, "CDMA"

    const-string v1, "send feature code..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/FeatureCode;->poundString:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/FeatureCode;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 242
    return-void
.end method
