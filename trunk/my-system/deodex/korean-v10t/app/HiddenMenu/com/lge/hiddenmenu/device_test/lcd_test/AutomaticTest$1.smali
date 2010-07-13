.class Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;
.super Ljava/lang/Thread;
.source "AutomaticTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->draw(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 190
    const-wide/16 v0, 0x5dc

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_14

    .line 192
    :goto_5
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->access$200(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1$1;-><init>(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void

    .line 191
    :catch_14
    move-exception v0

    goto :goto_5
.end method
