.class Lcom/lge/hiddenmenu/device_test/MotionSensorTest$1;
.super Ljava/lang/Object;
.source "MotionSensorTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->finish()V

    .line 198
    return-void
.end method
