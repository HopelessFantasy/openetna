.class Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto$1;
.super Ljava/lang/Object;
.source "Loopback_Auto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto$1;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto$1;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->finish()V

    .line 83
    return-void
.end method
