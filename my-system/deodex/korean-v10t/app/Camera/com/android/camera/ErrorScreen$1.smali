.class Lcom/android/camera/ErrorScreen$1;
.super Ljava/lang/Object;
.source "ErrorScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ErrorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ErrorScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/ErrorScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/ErrorScreen$1;->this$0:Lcom/android/camera/ErrorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ErrorScreen$1;->this$0:Lcom/android/camera/ErrorScreen;

    invoke-virtual {v0}, Lcom/android/camera/ErrorScreen;->finish()V

    .line 40
    return-void
.end method
