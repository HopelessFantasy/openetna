.class Lcom/android/settings/SyncSettings$2$1;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SyncSettings$2;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SyncSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/SyncSettings$2;)V
    .registers 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/settings/SyncSettings$2$1;->this$1:Lcom/android/settings/SyncSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/settings/SyncSettings$2$1;->this$1:Lcom/android/settings/SyncSettings$2;

    iget-object v0, v0, Lcom/android/settings/SyncSettings$2;->this$0:Lcom/android/settings/SyncSettings;

    invoke-static {v0}, Lcom/android/settings/SyncSettings;->access$100(Lcom/android/settings/SyncSettings;)V

    .line 429
    return-void
.end method
