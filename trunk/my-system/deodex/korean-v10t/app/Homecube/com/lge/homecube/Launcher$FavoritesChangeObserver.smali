.class Lcom/lge/homecube/Launcher$FavoritesChangeObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method public constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 3690
    iput-object p1, p0, Lcom/lge/homecube/Launcher$FavoritesChangeObserver;->this$0:Lcom/lge/homecube/Launcher;

    .line 3691
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3692
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/lge/homecube/Launcher$FavoritesChangeObserver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$2400(Lcom/lge/homecube/Launcher;)V

    .line 3697
    return-void
.end method
