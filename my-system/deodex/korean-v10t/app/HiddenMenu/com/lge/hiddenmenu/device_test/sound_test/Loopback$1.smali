.class Lcom/lge/hiddenmenu/device_test/sound_test/Loopback$1;
.super Ljava/lang/Object;
.source "Loopback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback$1;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback$1;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->finish()V

    .line 68
    return-void
.end method
