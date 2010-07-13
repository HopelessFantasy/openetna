.class public Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
.super Ljava/lang/Object;
.source "SnMenus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/account/ui/SnMenus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SnMenuItem"
.end annotation


# instance fields
.field final icon:I

.field final intent:Landroid/content/Intent;

.field final label:Ljava/lang/String;

.field final labelIndex:I

.field final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/sns/account/ui/SnMenus;


# direct methods
.method public constructor <init>(Lcom/lge/sns/account/ui/SnMenus;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter "tag"
    .parameter "label"
    .parameter "labelIndex"
    .parameter "icon"
    .parameter "intent"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->this$0:Lcom/lge/sns/account/ui/SnMenus;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->tag:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->label:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->icon:I

    .line 38
    iput-object p6, p0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->intent:Landroid/content/Intent;

    .line 39
    iput p4, p0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->labelIndex:I

    .line 40
    return-void
.end method
