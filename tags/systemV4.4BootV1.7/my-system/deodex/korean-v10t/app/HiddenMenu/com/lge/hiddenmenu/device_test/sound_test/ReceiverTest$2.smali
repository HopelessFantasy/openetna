.class Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$2;
.super Ljava/lang/Object;
.source "ReceiverTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->access$002(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;I)I

    .line 87
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->access$100(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V

    .line 88
    return-void
.end method
