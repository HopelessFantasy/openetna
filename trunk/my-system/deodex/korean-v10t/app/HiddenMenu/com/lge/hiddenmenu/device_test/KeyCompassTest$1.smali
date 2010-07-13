.class Lcom/lge/hiddenmenu/device_test/KeyCompassTest$1;
.super Ljava/lang/Object;
.source "KeyCompassTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->finish()V

    .line 132
    return-void
.end method
