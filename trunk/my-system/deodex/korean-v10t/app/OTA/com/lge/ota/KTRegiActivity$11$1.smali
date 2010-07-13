.class Lcom/lge/ota/KTRegiActivity$11$1;
.super Ljava/lang/Object;
.source "KTRegiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/ota/KTRegiActivity$11;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/ota/KTRegiActivity$11;


# direct methods
.method constructor <init>(Lcom/lge/ota/KTRegiActivity$11;)V
    .registers 2
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/lge/ota/KTRegiActivity$11$1;->this$1:Lcom/lge/ota/KTRegiActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 606
    const/4 v0, 0x1

    return v0
.end method
