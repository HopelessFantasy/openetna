.class Lcom/lge/sns/setting/ui/FeedSetting$2;
.super Ljava/lang/Object;
.source "FeedSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/setting/ui/FeedSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/setting/ui/FeedSetting;


# direct methods
.method constructor <init>(Lcom/lge/sns/setting/ui/FeedSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lge/sns/setting/ui/FeedSetting$2;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/sns/setting/ui/FeedSetting$2;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    invoke-virtual {v0}, Lcom/lge/sns/setting/ui/FeedSetting;->finish()V

    .line 128
    return-void
.end method
