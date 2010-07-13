.class Lcom/android/launcher/Launcher$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/app/SearchManager$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher/Launcher;

.field final synthetic val$searchManager:Landroid/app/SearchManager;


# direct methods
.method constructor <init>(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/launcher/Launcher$2;->this$0:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/Launcher$2;->val$searchManager:Landroid/app/SearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/launcher/Launcher$2;->val$searchManager:Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 998
    iget-object v0, p0, Lcom/android/launcher/Launcher$2;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->stopSearch()V

    .line 999
    return-void
.end method
