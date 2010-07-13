.class Lcom/lge/hiddenmenu/device_test/RtcTest$4;
.super Ljava/lang/Object;
.source "RtcTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/RtcTest;->updateClock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/RtcTest;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 218
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/RtcTest;->access$200(Lcom/lge/hiddenmenu/device_test/RtcTest;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 228
    :goto_a
    return-void

    .line 219
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 222
    .local v2, now:J
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/RtcTest;->access$300(Lcom/lge/hiddenmenu/device_test/RtcTest;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/RtcTest;->access$400(Lcom/lge/hiddenmenu/device_test/RtcTest;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    iget-object v5, v5, Lcom/lge/hiddenmenu/device_test/RtcTest;->mFormat:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    rem-long v4, v2, v8

    sub-long v4, v8, v4

    add-long v0, v2, v4

    .line 227
    .local v0, next:J
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/RtcTest;->access$600(Lcom/lge/hiddenmenu/device_test/RtcTest;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/device_test/RtcTest;->access$500(Lcom/lge/hiddenmenu/device_test/RtcTest;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method
