.class Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;
.super Landroid/view/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 314
    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    .line 315
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5
    .parameter "rotation"

    .prologue
    .line 320
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged, rotation changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :try_start_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    invoke-interface {v0, p1, v1, v2}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_24} :catch_25

    .line 328
    :goto_24
    return-void

    .line 324
    :catch_25
    move-exception v0

    goto :goto_24
.end method
