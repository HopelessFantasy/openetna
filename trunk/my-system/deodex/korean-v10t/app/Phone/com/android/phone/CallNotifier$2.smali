.class Lcom/android/phone/CallNotifier$2;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field final synthetic val$callLogType:I

.field final synthetic val$ci:Lcom/android/internal/telephony/CallerInfo;

.field final synthetic val$date:J

.field final synthetic val$duration:J

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$presentation:I


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    iput-object p2, p0, Lcom/android/phone/CallNotifier$2;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/CallNotifier$2;->val$number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/CallNotifier$2;->val$presentation:I

    iput p5, p0, Lcom/android/phone/CallNotifier$2;->val$callLogType:I

    iput-wide p6, p0, Lcom/android/phone/CallNotifier$2;->val$date:J

    iput-wide p8, p0, Lcom/android/phone/CallNotifier$2;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->val$number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1061
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$2;->val$number:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/CallNotifier$2;->val$presentation:I

    iget v4, p0, Lcom/android/phone/CallNotifier$2;->val$callLogType:I

    iget-wide v5, p0, Lcom/android/phone/CallNotifier$2;->val$date:J

    iget-wide v7, p0, Lcom/android/phone/CallNotifier$2;->val$duration:J

    long-to-int v7, v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-static/range {v0 .. v7}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    .line 1067
    :goto_34
    return-void

    .line 1063
    :cond_35
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$2;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/CallNotifier$2;->val$presentation:I

    iget v4, p0, Lcom/android/phone/CallNotifier$2;->val$callLogType:I

    iget-wide v5, p0, Lcom/android/phone/CallNotifier$2;->val$date:J

    iget-wide v7, p0, Lcom/android/phone/CallNotifier$2;->val$duration:J

    long-to-int v7, v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-static/range {v0 .. v7}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    goto :goto_34
.end method
