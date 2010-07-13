.class Lcom/android/camera/MenuHelper$10;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper;->displayDeleteDialog(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onDelete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/camera/MenuHelper$10;->val$onDelete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "v"
    .parameter "x"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/camera/MenuHelper$10;->val$onDelete:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 540
    iget-object v0, p0, Lcom/android/camera/MenuHelper$10;->val$onDelete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 541
    :cond_9
    return-void
.end method
