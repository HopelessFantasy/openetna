.class final Lcom/android/server/InputDevice$TSCalObserver;
.super Landroid/os/FileObserver;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TSCalObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/InputDevice;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "path"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/server/InputDevice$TSCalObserver;->this$0:Lcom/android/server/InputDevice;

    .line 248
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 249
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .registers 4
    .parameter "event"
    .parameter "path"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/InputDevice$TSCalObserver;->this$0:Lcom/android/server/InputDevice;

    invoke-static {v0}, Lcom/android/server/InputDevice;->access$000(Lcom/android/server/InputDevice;)V

    .line 253
    return-void
.end method
