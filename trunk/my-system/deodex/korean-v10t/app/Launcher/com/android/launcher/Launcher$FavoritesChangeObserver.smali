.class Lcom/android/launcher/Launcher$FavoritesChangeObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/android/launcher/Launcher$FavoritesChangeObserver;->this$0:Lcom/android/launcher/Launcher;

    .line 2086
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2087
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/launcher/Launcher$FavoritesChangeObserver;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$1900(Lcom/android/launcher/Launcher;)V

    .line 2092
    return-void
.end method
