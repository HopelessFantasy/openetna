.class Lcom/android/internal/policy/impl/GlobalActions$1;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .registers 13
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .registers 4
    .parameter "on"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 125
    return-void

    .line 123
    :cond_d
    const/4 v1, 0x2

    goto :goto_9
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method
