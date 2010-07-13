.class Lcom/lge/hiddenmenu/device_test/RtcTest$1;
.super Ljava/lang/Object;
.source "RtcTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/RtcTest;->onCreate(Landroid/os/Bundle;)V
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
    .line 108
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/device_test/RtcTest;->showDialog(I)V

    .line 110
    return-void
.end method
