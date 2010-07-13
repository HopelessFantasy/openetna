.class Lcom/lge/homecube/Launcher$17;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/app/SearchManager$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;

.field final synthetic val$searchManager:Landroid/app/SearchManager;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher;Landroid/app/SearchManager;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2414
    iput-object p1, p0, Lcom/lge/homecube/Launcher$17;->this$0:Lcom/lge/homecube/Launcher;

    iput-object p2, p0, Lcom/lge/homecube/Launcher$17;->val$searchManager:Landroid/app/SearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/lge/homecube/Launcher$17;->val$searchManager:Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 2416
    iget-object v0, p0, Lcom/lge/homecube/Launcher$17;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->stopSearch()V

    .line 2417
    return-void
.end method
