.class Lcom/android/server/status/StatusBarPolicy$3;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 2
    .parameter

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$3;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 1269
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$3;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarPolicy;->access$1702(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1270
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$3;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarPolicy;->access$1802(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1271
    return-void
.end method
