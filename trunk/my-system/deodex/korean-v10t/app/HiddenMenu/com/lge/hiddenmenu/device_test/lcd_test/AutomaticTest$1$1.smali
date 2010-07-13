.class Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1$1;
.super Ljava/lang/Object;
.source "AutomaticTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1$1;->this$1:Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1$1;->this$1:Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1$1;->this$1:Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->access$000(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->access$100(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;I)V

    .line 195
    return-void
.end method
