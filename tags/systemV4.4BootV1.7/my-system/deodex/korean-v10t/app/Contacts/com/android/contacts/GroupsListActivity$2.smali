.class Lcom/android/contacts/GroupsListActivity$2;
.super Landroid/database/ContentObserver;
.source "GroupsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/GroupsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/GroupsListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/GroupsListActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/contacts/GroupsListActivity$2;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 216
    return-void
.end method
