.class Lcom/android/browser/MostVisitedActivity$MyAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "MostVisitedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MostVisitedActivity$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/MostVisitedActivity$MyAdapter;


# direct methods
.method public constructor <init>(Lcom/android/browser/MostVisitedActivity$MyAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter$ChangeObserver;->this$1:Lcom/android/browser/MostVisitedActivity$MyAdapter;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 107
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter$ChangeObserver;->this$1:Lcom/android/browser/MostVisitedActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/android/browser/MostVisitedActivity$MyAdapter;->refreshData()V

    .line 117
    return-void
.end method
