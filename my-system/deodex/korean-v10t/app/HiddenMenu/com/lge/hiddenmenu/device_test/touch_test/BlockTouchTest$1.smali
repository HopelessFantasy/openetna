.class Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$1;
.super Ljava/lang/Object;
.source "BlockTouchTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->finish()V

    .line 67
    return-void
.end method
