.class Lcom/android/music/WeekSelector$1;
.super Ljava/lang/Object;
.source "WeekSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/WeekSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/WeekSelector;


# direct methods
.method constructor <init>(Lcom/android/music/WeekSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/WeekSelector;->setResult(I)V

    .line 67
    iget-object v0, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    invoke-virtual {v0}, Lcom/android/music/WeekSelector;->finish()V

    .line 68
    return-void
.end method
